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

