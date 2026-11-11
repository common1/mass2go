-- CreateEnum
CREATE TYPE "InviteStatus" AS ENUM ('PENDING', 'ACCEPTED', 'DECLINED', 'EXPIRED');

-- CreateTable
CREATE TABLE "user" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "emailVerified" BOOLEAN NOT NULL DEFAULT false,
    "image" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "role" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,

    CONSTRAINT "role_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "session" (
    "id" TEXT NOT NULL,
    "expiresAt" TIMESTAMP(3) NOT NULL,
    "token" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "ipAddress" TEXT,
    "userAgent" TEXT,
    "userId" TEXT NOT NULL,

    CONSTRAINT "session_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "account" (
    "id" TEXT NOT NULL,
    "accountId" TEXT NOT NULL,
    "providerId" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "accessToken" TEXT,
    "refreshToken" TEXT,
    "idToken" TEXT,
    "accessTokenExpiresAt" TIMESTAMP(3),
    "refreshTokenExpiresAt" TIMESTAMP(3),
    "scope" TEXT,
    "password" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "account_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "verification" (
    "id" TEXT NOT NULL,
    "identifier" TEXT NOT NULL,
    "value" TEXT NOT NULL,
    "expiresAt" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "verification_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "member" (
    "id" TEXT NOT NULL,
    "userId" TEXT,
    "firstName" TEXT NOT NULL,
    "lastName" TEXT NOT NULL,
    "birthDate" TIMESTAMP(3) NOT NULL,
    "genderId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "member_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "club" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "code" TEXT,
    "address" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "club_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "clubmembership" (
    "id" TEXT NOT NULL,
    "memberId" TEXT NOT NULL,
    "clubId" TEXT NOT NULL,
    "roleId" TEXT NOT NULL,
    "joinedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "leftAt" TIMESTAMP(3),

    CONSTRAINT "clubmembership_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Invite" (
    "id" TEXT NOT NULL,
    "clubId" TEXT NOT NULL,
    "userId" TEXT,
    "archeryGBNumber" TEXT,
    "invitedBy" TEXT NOT NULL,
    "status" "InviteStatus" NOT NULL DEFAULT 'PENDING',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "acceptedAt" TIMESTAMP(3),
    "declinedAt" TIMESTAMP(3),

    CONSTRAINT "Invite_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "gender" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "gender_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "agegroup" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "minAge" INTEGER,
    "maxAge" INTEGER,

    CONSTRAINT "agegroup_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "bowtype" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "bowtype_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "bowstyle" (
    "id" TEXT NOT NULL,
    "bowTypeId" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "bowstyle_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "discipline" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "discipline_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "targetfacetype" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "targetfacetype_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "targetface" (
    "id" TEXT NOT NULL,
    "targetFaceTypeId" TEXT NOT NULL,
    "sizeCm" INTEGER NOT NULL,

    CONSTRAINT "targetface_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "contest" (
    "id" TEXT NOT NULL,
    "clubId" TEXT NOT NULL,
    "disciplineId" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "startDate" TIMESTAMP(3) NOT NULL,
    "endDate" TIMESTAMP(3) NOT NULL,
    "location" TEXT,

    CONSTRAINT "contest_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "round" (
    "id" TEXT NOT NULL,
    "contestId" TEXT NOT NULL,
    "targetFaceId" TEXT NOT NULL,
    "ageGroupId" TEXT,
    "name" TEXT NOT NULL,
    "distanceMeters" INTEGER NOT NULL,
    "totalArrows" INTEGER NOT NULL,
    "endsCount" INTEGER NOT NULL,
    "arrowsPerEnd" INTEGER NOT NULL,

    CONSTRAINT "round_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "score" (
    "id" TEXT NOT NULL,
    "memberId" TEXT NOT NULL,
    "roundId" TEXT NOT NULL,
    "bowStyleId" TEXT NOT NULL,
    "totalScore" INTEGER NOT NULL,
    "tensCount" INTEGER NOT NULL DEFAULT 0,
    "xCount" INTEGER NOT NULL DEFAULT 0,
    "arrowPlacements" JSONB,
    "isCertified" BOOLEAN NOT NULL DEFAULT false,
    "shotAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "score_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "highscore" (
    "id" TEXT NOT NULL,
    "memberId" TEXT NOT NULL,
    "disciplineId" TEXT NOT NULL,
    "bowStyleId" TEXT NOT NULL,
    "ageGroupId" TEXT NOT NULL,
    "scoreValue" INTEGER NOT NULL,
    "achievedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "highscore_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "user_email_key" ON "user"("email");

-- CreateIndex
CREATE UNIQUE INDEX "role_name_key" ON "role"("name");

-- CreateIndex
CREATE INDEX "session_userId_idx" ON "session"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "session_token_key" ON "session"("token");

-- CreateIndex
CREATE INDEX "account_userId_idx" ON "account"("userId");

-- CreateIndex
CREATE INDEX "verification_identifier_idx" ON "verification"("identifier");

-- CreateIndex
CREATE UNIQUE INDEX "member_userId_key" ON "member"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "club_name_code_key" ON "club"("name", "code");

-- CreateIndex
CREATE UNIQUE INDEX "clubmembership_memberId_clubId_roleId_key" ON "clubmembership"("memberId", "clubId", "roleId");

-- CreateIndex
CREATE UNIQUE INDEX "gender_name_key" ON "gender"("name");

-- CreateIndex
CREATE UNIQUE INDEX "agegroup_name_key" ON "agegroup"("name");

-- CreateIndex
CREATE UNIQUE INDEX "bowtype_name_key" ON "bowtype"("name");

-- CreateIndex
CREATE UNIQUE INDEX "bowstyle_name_key" ON "bowstyle"("name");

-- CreateIndex
CREATE UNIQUE INDEX "discipline_name_key" ON "discipline"("name");

-- CreateIndex
CREATE UNIQUE INDEX "targetfacetype_name_key" ON "targetfacetype"("name");

-- CreateIndex
CREATE UNIQUE INDEX "targetface_targetFaceTypeId_sizeCm_key" ON "targetface"("targetFaceTypeId", "sizeCm");

-- CreateIndex
CREATE UNIQUE INDEX "highscore_memberId_disciplineId_bowStyleId_ageGroupId_key" ON "highscore"("memberId", "disciplineId", "bowStyleId", "ageGroupId");

-- AddForeignKey
ALTER TABLE "session" ADD CONSTRAINT "session_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "account" ADD CONSTRAINT "account_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "member" ADD CONSTRAINT "member_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "member" ADD CONSTRAINT "member_genderId_fkey" FOREIGN KEY ("genderId") REFERENCES "gender"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "clubmembership" ADD CONSTRAINT "clubmembership_memberId_fkey" FOREIGN KEY ("memberId") REFERENCES "member"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "clubmembership" ADD CONSTRAINT "clubmembership_clubId_fkey" FOREIGN KEY ("clubId") REFERENCES "club"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "clubmembership" ADD CONSTRAINT "clubmembership_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES "role"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Invite" ADD CONSTRAINT "Invite_clubId_fkey" FOREIGN KEY ("clubId") REFERENCES "club"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Invite" ADD CONSTRAINT "Invite_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Invite" ADD CONSTRAINT "Invite_invitedBy_fkey" FOREIGN KEY ("invitedBy") REFERENCES "user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "bowstyle" ADD CONSTRAINT "bowstyle_bowTypeId_fkey" FOREIGN KEY ("bowTypeId") REFERENCES "bowtype"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "targetface" ADD CONSTRAINT "targetface_targetFaceTypeId_fkey" FOREIGN KEY ("targetFaceTypeId") REFERENCES "targetfacetype"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "contest" ADD CONSTRAINT "contest_clubId_fkey" FOREIGN KEY ("clubId") REFERENCES "club"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "contest" ADD CONSTRAINT "contest_disciplineId_fkey" FOREIGN KEY ("disciplineId") REFERENCES "discipline"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "round" ADD CONSTRAINT "round_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "contest"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "round" ADD CONSTRAINT "round_targetFaceId_fkey" FOREIGN KEY ("targetFaceId") REFERENCES "targetface"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "round" ADD CONSTRAINT "round_ageGroupId_fkey" FOREIGN KEY ("ageGroupId") REFERENCES "agegroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "score" ADD CONSTRAINT "score_memberId_fkey" FOREIGN KEY ("memberId") REFERENCES "member"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "score" ADD CONSTRAINT "score_roundId_fkey" FOREIGN KEY ("roundId") REFERENCES "round"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "score" ADD CONSTRAINT "score_bowStyleId_fkey" FOREIGN KEY ("bowStyleId") REFERENCES "bowstyle"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "highscore" ADD CONSTRAINT "highscore_memberId_fkey" FOREIGN KEY ("memberId") REFERENCES "member"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "highscore" ADD CONSTRAINT "highscore_disciplineId_fkey" FOREIGN KEY ("disciplineId") REFERENCES "discipline"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "highscore" ADD CONSTRAINT "highscore_bowStyleId_fkey" FOREIGN KEY ("bowStyleId") REFERENCES "bowstyle"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "highscore" ADD CONSTRAINT "highscore_ageGroupId_fkey" FOREIGN KEY ("ageGroupId") REFERENCES "agegroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;
