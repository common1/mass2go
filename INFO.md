# Project mass2go

```
Modern Archery Scoring Services 2 Go
```

## 1 - Setup

### 1.1 - Create project

```
npx create-next-app@16.4.0 mass2go
npx create-next-app@16.4.0 mass2go
√ Would you like to use the recommended Next.js defaults? » No, customize settings
√ Would you like to use TypeScript? ... Yes
√ Which linter would you like to use? » ESLint
√ Would you like to use React Compiler? ... No
√ Would you like to use Tailwind CSS? ... Yes
√ Would you like your code inside a `src/` directory? ... Yes
√ Would you like to use App Router? (recommended) ... Yes
√ Would you like to use Cache Components? ... No
√ Would you like to customize the import alias (`@/*` by default)? ... No
√ Would you like to include AGENTS.md to guide coding agents to write up-to-date Next.js code? ... Yes
√ Would you like to help improve Next.js by letting agents prepare anonymized feedback for your review as you code? (Disable anytime with `experimental.agentFeedback: false`.) ... No
Creating a new Next.js app in D:\Projects_Github\Archery\mass2go.

Using npm.

Initializing project with template: app-tw 


Installing dependencies:
- next
- react
- react-dom

Installing devDependencies:
- @tailwindcss/turbopack
- @types/node
- @types/react
- @types/react-dom
- eslint
- eslint-config-next
- tailwindcss
- typescript

npm warn deprecated eslint@9.39.5: This version is no longer supported. Please see https://eslint.org/version-support for other options.

added 431 packages, and audited 438 packages in 1m

181 packages are looking for funding
  run `npm fund` for details

9 vulnerabilities (8 moderate, 1 critical)

To address issues that do not require attention, run:
  npm audit fix

To address all issues (including breaking changes), run:
  npm audit fix --force

Run `npm audit` for details.

Generating route types...
✓ Types generated successfully

Initialized a git repository.

Success! Created mass2go at D:\Projects_Github\Archery\mass2go

A new version of `create-next-app` is available!
You can update by running: npm i -g create-next-app
```

## 1.2 - Setup Shadcn/UI

```
npx shadcn@4.23.0 init
Need to install the following packages:
shadcn@4.23.0
Ok to proceed? (y) 

√ Select a component library » Base UI (Recommended)
√ Which preset would you like to use? » Nova
✔ Preflight checks.
✔ Verifying framework. Found Next.js.
✔ Validating Tailwind CSS. Found v4.
✔ Validating import alias.
✔ Writing components.json.
✔ Checking registry.
✔ Installing dependencies.
✔ Updating fonts.
✔ Created 2 files:
  - src\components\ui\button.tsx
  - src\lib\utils.ts
✔ Updating src\app\globals.css

Project initialization completed.
You may now add components.
```

### 1.3 - Add components

```
Do not select code-block, questionnaire, trace
npx shadcn@4.23.0 add
√ Which components would you like to add? » accordion, alert, alert-dialog, aspect-ratio, attachment, avatar, badge, breadcrumb, bubble, button, button-group, calendar, card, carousel, chart, checkbox, code-block, collapsible, combobox, command, context-menu, dialog, direction, drawer, dropdown-menu, empty, field, form, hover-card, input, input-group, input-otp, item, kbd, label, marker, menubar, message, message-scroller, native-select, navigation-menu, pagination, popover, progress, questionnaire, radio-group, resizable, scroll-area, select, separator, sheet, sidebar, skeleton, slider, spinner, switch, table, tabs, textarea, toast, toggle, toggle-group, tooltip, trace
✔ Checking registry.
✔ Installing dependencies.
✔ Created 65 files:
  - src\components\ui\accordion.tsx
  - src\components\ui\alert.tsx
  - src\components\ui\aspect-ratio.tsx
  - src\components\ui\avatar.tsx
  - src\components\ui\badge.tsx
  - src\components\ui\breadcrumb.tsx
  - src\components\ui\bubble.tsx
  - src\components\ui\card.tsx
  - src\components\ui\checkbox.tsx
  - src\components\ui\collapsible.tsx
  - src\components\ui\context-menu.tsx
  - src\components\ui\direction.tsx
  - src\components\ui\drawer.tsx
  - src\components\ui\dropdown-menu.tsx
  - src\components\ui\empty.tsx
  - src\components\ui\hover-card.tsx
  - src\components\ui\input.tsx
  - src\components\ui\input-otp.tsx
  - src\components\ui\kbd.tsx
  - src\components\ui\label.tsx
  - src\components\ui\marker.tsx
  - src\components\ui\message.tsx
  - src\components\ui\native-select.tsx
  - src\components\ui\navigation-menu.tsx
  - src\components\ui\popover.tsx
  - src\components\ui\progress.tsx
  - src\components\ui\radio-group.tsx
  - src\components\ui\resizable.tsx
  - src\components\ui\scroll-area.tsx
  - src\components\ui\select.tsx
  - src\components\ui\separator.tsx
  - src\components\ui\skeleton.tsx
  - src\components\ui\slider.tsx
  - src\components\ui\spinner.tsx
  - src\components\ui\switch.tsx
  - src\components\ui\table.tsx
  - src\components\ui\tabs.tsx
  - src\components\ui\textarea.tsx
  - src\components\ui\toggle.tsx
  - src\components\ui\tooltip.tsx
  - src\hooks\use-highlighted-code.ts
  - src\lib\highlighter.tsx
  - src\hooks\use-mobile.ts
  - src\components\ui\alert-dialog.tsx
  - src\components\ui\attachment.tsx
  - src\components\ui\calendar.tsx
  - src\components\ui\carousel.tsx
  - src\components\ui\dialog.tsx
  - src\components\ui\message-scroller.tsx
  - src\components\ui\pagination.tsx
  - src\components\ui\questionnaire.tsx
  - src\components\ui\sheet.tsx
  - src\components\ui\toast.tsx
  - src\components\ui\chart.tsx
  - src\components\ui\trace.tsx
  - src\components\ui\menubar.tsx
  - src\components\ui\button-group.tsx
  - src\components\ui\field.tsx
  - src\components\ui\item.tsx
  - src\components\ui\input-group.tsx
  - src\components\ui\toggle-group.tsx
  - src\components\ui\code-block.tsx
  - src\components\ui\sidebar.tsx
  - src\components\ui\combobox.tsx
  - src\components\ui\command.tsx
ℹ Skipped 1 file: (files might be identical, use --overwrite to overwrite)
  - src\components\ui\button.tsx
The `tooltip` component has been added. Remember to wrap your app with the `TooltipProvider` component.

```tsx title="app/layout.tsx"
import { TooltipProvider } from "@/components/ui/tooltip"

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <body>
        <TooltipProvider>{children}</TooltipProvider>
      </body>
    </html>
  )
}
```

The `tooltip` component has been added. Remember to wrap your app with the `TooltipProvider` component.

```tsx title="app/layout.tsx"
import { TooltipProvider } from "@/components/ui/tooltip"

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <body>
        <TooltipProvider>{children}</TooltipProvider>
      </body>
    </html>
  )
}
```

## 2 - Database

```
[https://www.prisma.io/docs/guides/v7/frameworks/nextjs]
```

### 2.1 - Install and Configure Prisma

```
[https://www.prisma.io/docs/guides/v7/frameworks/nextjs#2-install-and-configure-prisma]
```

```
Install dependencies
npm install prisma@prev tsx @types/pg --save-dev

added 152 packages, and audited 882 packages in 21s

290 packages are looking for funding
  run `npm fund` for details

14 vulnerabilities (2 low, 11 moderate, 1 critical)

To address issues that do not require attention, run:
  npm audit fix

To address all issues (including breaking changes), run:
  npm audit fix --force

Run `npm audit` for details.
```

```
npm install @prisma/client@7 @prisma/adapter-pg dotenv pg

added 13 packages, changed 1 package, and audited 895 packages in 5s

291 packages are looking for funding
  run `npm fund` for details

14 vulnerabilities (2 low, 11 moderate, 1 critical)

To address issues that do not require attention, run:
  npm audit fix

To address all issues (including breaking changes), run:
  npm audit fix --force

Run `npm audit` for details.
```

```
Initialize prisma
npx prisma init
✔ Skills installed

Initialized Prisma in your project

  prisma/
    schema.prisma
  prisma7.config.ts
  .env
  .claude/skills/
  .windsurf/skills/
  .agents/skills/
  skills-lock.json

warn You already have a .gitignore file. Don't forget to add .env in it to not commit any private information.

Next, choose how you want to set up your database:

CONNECT EXISTING DATABASE:
  1. Configure your DATABASE_URL in prisma7.config.ts
  2. Run prisma db pull to introspect your database.

CREATE NEW DATABASE:
  Local: npx prisma dev (runs Postgres locally in your terminal)
  Cloud: npx create-db (creates a free Prisma Postgres database)

Then, define your models in prisma/schema.prisma and run prisma migrate dev to apply your schema.

Learn more: https://pris.ly/getting-started
```

```
Drop database and user

psql -U postgres
postgres=# DROP DATABASE mass2go_db; 
postgres=# DROP USER mass2go_user; 
```

```
Create database and user

psql -U postgres
postgres=# CREATE DATABASE mass2go_db; 
postgres=# CREATE USER mass2go_user WITH ENCRYPTED PASSWORD 'WXYZ&6789'; 
postgres=# GRANT ALL PRIVILEGES ON DATABASE mass2go_db TO mass2go_user; 
postgres=# \c mass2go_db postgres;
You are now connected to database "mass2go_db" as user "postgres"
mass2go_db=# GRANT ALL ON SCHEMA public TO mass2go_user; 
mass2go_db=# ALTER USER mass2go_user CREATEDB;
```

```
Create DATABASE_URL in .env
DATABASE_URL="postgres://mass2go_user:WXYZ&6789@localhost:5432/mass2go_db"
```

### 2.2 - Define your prisma schema

```
[https://www.prisma.io/docs/guides/v7/frameworks/nextjs#22-define-your-prisma-schema]
```

```
In prisma/schema.prisma add the following models

generator client {
  provider = "prisma-client"
  output   = "../src/generated/prisma"
}

datasource db {
  provider = "postgresql"
}

// ==========================================
// USER & SECURITY RELATIONSHIPS
// ==========================================

model User {
  id            String    @id @default(uuid())
  name          String
  email         String
  emailVerified Boolean   @default(false)
  image         String?
  createdAt     DateTime  @default(now())
  updatedAt     DateTime  @updatedAt
  sessions      Session[]
  accounts      Account[]

  // Relations
  member       Member?
  invitesSent     Invite[]         @relation("InvitesSent")
  invitesReceived Invite[]         @relation("InvitesReceived")

  @@unique([email])
  @@map("user")
}

model Role {
  id          String   @id @default(uuid())
  name        String
  description String?

  // Relations
  memberships ClubMembership[]

  @@unique([name]) // e.g., "Admin", "Coach", "Archer", "Club Manager"
  @@map("role")
}

model Session {
  id        String   @id @default(uuid())
  expiresAt DateTime
  token     String
  createdAt DateTime @default(now())
  updatedAt DateTime @updatedAt
  ipAddress String?
  userAgent String?
  userId    String

  // Relations
  user      User     @relation(fields: [userId], references: [id], onDelete: Cascade)

  @@unique([token])
  @@index([userId])
  @@map("session")
}

model Account {
  id                    String    @id @default(uuid())
  accountId             String
  providerId            String
  userId                String
  accessToken           String?
  refreshToken          String?
  idToken               String?
  accessTokenExpiresAt  DateTime?
  refreshTokenExpiresAt DateTime?
  scope                 String?
  password              String?
  createdAt             DateTime  @default(now())
  updatedAt             DateTime  @updatedAt

  // Relations
  user                  User      @relation(fields: [userId], references: [id], onDelete: Cascade)

  @@index([userId])
  @@map("account")
}

model Verification {
  id         String   @id @default(uuid())
  identifier String
  value      String
  expiresAt  DateTime
  createdAt  DateTime @default(now())
  updatedAt  DateTime @updatedAt

  @@index([identifier])
  @@map("verification")
}

// ==========================================
// CORE ENTITIES (MEMBER & CLUBS)
// ==========================================

model Member {
  id          String   @id @default(uuid())
  userId      String?
  firstName   String
  lastName    String
  birthDate   DateTime
  genderId    String
  createdAt   DateTime @default(now())
  updatedAt   DateTime @updatedAt

  // Relations
  user        User?            @relation(fields: [userId], references: [id], onDelete: Cascade)
  gender      Gender           @relation(fields: [genderId], references: [id], onDelete: Cascade)
  memberships ClubMembership[]
  scores      Score[]
  highscores  Highscore[]

  @@unique([userId])
  @@map("member")
}

model Club {
  id          String   @id @default(uuid())
  name        String 
  code        String? // Short code or registration number
  address     String?
  createdAt   DateTime @default(now())

  // Relations
  memberships ClubMembership[]
  contests    Contest[]
  invites     Invite[]

  @@unique([name, code])
  @@map("club")
}

model ClubMembership {
  id        String    @id @default(uuid())
  memberId  String
  clubId    String
  roleId    String
  joinedAt  DateTime  @default(now())
  leftAt    DateTime? // Nullable if currently active

  // Relations
  member    Member   @relation(fields: [memberId], references: [id], onDelete: Cascade)
  club      Club     @relation(fields: [clubId], references: [id], onDelete: Cascade)
  role      Role     @relation(fields: [roleId], references: [id], onDelete: Cascade)

  @@unique([memberId, clubId, roleId])
  @@map("clubmembership")
}

model Invite {
  id              String       @id @default(cuid())
  clubId          String
  userId          String? // If user already exists
  archeryGBNumber String? // If inviting by number
  invitedBy       String // User ID of inviter
  status          InviteStatus @default(PENDING)
  createdAt       DateTime     @default(now())
  acceptedAt      DateTime?
  declinedAt      DateTime?

  // Relations
  club    Club  @relation(fields: [clubId], references: [id], onDelete: Cascade)
  user    User? @relation("InvitesReceived", fields: [userId], references: [id])
  inviter User  @relation("InvitesSent", fields: [invitedBy], references: [id])
}

// ==========================================
// ARCHERY METADATA LOOKUPS
// ==========================================

enum InviteStatus {
  PENDING
  ACCEPTED
  DECLINED
  EXPIRED
}

model Gender {
  id    String @id @default(uuid())
  name  String // e.g., "Male", "Female", "Non-Binary"
  
  // Relations
  members Member[]

  @@unique([name])
  @@map("gender")
}

model AgeGroup {
  id         String   @id @default(uuid())
  name       String   // e.g., "Under 21", "50+", "Senior"
  minAge     Int?
  maxAge     Int?

  // Relations
  highscores Highscore[]
  rounds     Round[]

  @@unique([name])
  @@map("agegroup")
}

model BowType {
  id          String   @id @default(uuid())
  name        String   // e.g., "Recurve", "Compound", "Barebow", "Longbow"
  
  // Relations
  bowStyles   BowStyle[]

  @@unique([name])
  @@map("bowtype")
}

model BowStyle {
  id        String   @id @default(uuid())
  bowTypeId String
  name      String   // e.g., "WA Recurve", "Traditional Recurve"

  // Relations
  bowType   BowType     @relation(fields: [bowTypeId], references: [id], onDelete: Cascade)
  scores    Score[]
  highscores Highscore[]

  @@unique([name])
  @@map("bowstyle")
}

model Discipline {
  id          String   @id @default(uuid())
  name        String   // e.g., "Target", "Field", "3D", "Indoor"
  
  // Relations
  contests    Contest[]
  highscores  Highscore[]

  @@unique([name])
  @@map("discipline")
}

model TargetFaceType {
  id          String   @id @default(uuid())
  name        String   // e.g., "Full Face", "3-Spot", "Vegas", "Animal"

  // Relations
  targetFaces TargetFace[]

  @@unique([name])
  @@map("targetfacetype")
}

model TargetFace {
  id               String   @id @default(uuid())
  targetFaceTypeId String
  sizeCm           Int      // e.g., 122, 80, 40

  // Relations
  targetFaceType   TargetFaceType @relation(fields: [targetFaceTypeId], references: [id], onDelete: Cascade)
  rounds           Round[]
  
  @@unique([targetFaceTypeId, sizeCm])
  @@map("targetface")
}

// ==========================================
// COMPETITIONS, ROUNDS, & PERFORMANCE
// ==========================================

model Contest {
  id           String   @id @default(uuid())
  clubId       String
  disciplineId String
  name         String
  startDate    DateTime
  endDate      DateTime
  location     String?

  // Relations
  club         Club       @relation(fields: [clubId], references: [id], onDelete: Cascade)
  discipline   Discipline @relation(fields: [disciplineId], references: [id], onDelete: Cascade)
  rounds       Round[]

  @@map("contest")
}

model Round {
  id           String   @id @default(uuid())
  contestId    String
  targetFaceId String
  ageGroupId   String?
  name         String   // e.g., "70m Round", "WA 18m", "First Half"
  distanceMeters Int
  totalArrows  Int      // e.g., 72, 60
  endsCount    Int      // Number of ends (e.g., 12 ends of 6 arrows)
  arrowsPerEnd Int      // e.g., 3 or 6

  // Relations
  contest      Contest    @relation(fields: [contestId], references: [id], onDelete: Cascade)
  targetFace   TargetFace @relation(fields: [targetFaceId], references: [id], onDelete: Cascade)
  ageGroup     AgeGroup?  @relation(fields: [ageGroupId], references: [id], onDelete: Cascade)
  scores       Score[]

  @@map("round")
}

model Score {
  id         String   @id @default(uuid())
  memberId   String
  roundId    String
  bowStyleId String
  totalScore Int      // Total aggregated score
  tensCount  Int      @default(0) // Inner 10s / X count for tie breakers
  xCount     Int      @default(0)
  arrowPlacements Json? // Optional JSON array holding individual arrow values per end e.g. [[10,9,9], [10,10,8]]
  isCertified Boolean  @default(false) // Verified by a judge/club manager
  shotAt     DateTime @default(now())

  // Relations
  member     Member   @relation(fields: [memberId], references: [id], onDelete: Cascade)
  round      Round    @relation(fields: [roundId], references: [id], onDelete: Cascade)
  bowStyle   BowStyle @relation(fields: [bowStyleId], references: [id], onDelete: Cascade)

  @@map("score")
}

model Highscore {
  id           String   @id @default(uuid())
  memberId     String
  disciplineId String
  bowStyleId   String
  ageGroupId   String
  scoreValue   Int
  achievedAt   DateTime

  // Relations
  member       Member     @relation(fields: [memberId], references: [id], onDelete: Cascade)
  discipline   Discipline @relation(fields: [disciplineId], references: [id], onDelete: Cascade)
  bowStyle     BowStyle   @relation(fields: [bowStyleId], references: [id], onDelete: Cascade)
  ageGroup     AgeGroup   @relation(fields: [ageGroupId], references: [id], onDelete: Cascade)

  @@unique([memberId, disciplineId, bowStyleId, ageGroupId])
  @@map("highscore")
}

```

### 2.3 Run migrations and generate prisma client

```
npx prisma migrate dev --name create_database_tables
Loaded Prisma config from prisma7.config.ts.

Prisma schema loaded from prisma\schema.prisma.
Datasource "db": PostgreSQL database "mass2go_db", schema "public" at "localhost:5432"

Applying migration `20261111122428_create_database_tables`

The following migration(s) have been created and applied from new schema changes:

prisma\migrations/
  └─ 20261111122428_create_database_tables/
    └─ migration.sql

Your database is now in sync with your schema.
```

```
>npx prisma generate
Loaded Prisma config from prisma7.config.ts.

Prisma schema loaded from prisma\schema.prisma.
┌─────────────────────────────────────────────────────────┐
│  Update available 7.10.1 -> 8.0.0-rc.33                 │
│                                                         │
│  This is a major update - please follow the guide at    │
│  https://pris.ly/d/major-version-upgrade                │
│                                                         │
│  Run the following to update                            │
│    npm i --save-dev prisma@latest                       │
│    npm i @prisma/client@latest                          │
└─────────────────────────────────────────────────────────┘

✔ Generated Prisma Client (7.10.1) to .\src\generated\prisma in 97ms
```

```
Start prisma studio

npx prisma studio
Loaded Prisma config from prisma7.config.ts.


Prisma Studio is running at: http://localhost:51212
```

