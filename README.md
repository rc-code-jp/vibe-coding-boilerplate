# Vibe Coding Boilerplate

Modern Next.js starter with Sentry integration for error tracking and AI-assisted debugging.

## 🎵 The Vibe Coding Experience

**Error-Free Development Flow**

With Sentry integration, you can quickly identify and resolve errors, ensuring your vibe coding sessions are never interrupted by debugging frustrations. Maintain your coding flow while developing with confidence.

- 🚀 **Instant Error Detection**: Real-time error capture and notifications
- 🔍 **AI-Assisted Debugging**: Automatic root cause analysis via Sentry MCP
- ⚡ **Rapid Resolution**: Detailed stack traces for lightning-fast problem solving
- 🎯 **Focus Preservation**: Spend time creating, not debugging

> **📝 Starter Template**: Clear this README and replace with your project documentation before development.

## 🚀 Quick Start

**Automated Setup (Recommended):**
```bash
git clone https://github.com/rc-code-jp/vibe-coding-boilerplate.git
cd vibe-coding-boilerplate
./setup.sh
```

**Manual Setup:**
```bash
git clone https://github.com/rc-code-jp/vibe-coding-boilerplate.git
cd vibe-coding-boilerplate
npm install
cp env.example .env.local
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) to start coding!

## 📦 What's Included

- **Next.js 15** + **React 19** + **TypeScript**
- **Tailwind CSS** for styling
- **Sentry** for error tracking
- **AI Integration** - Sentry MCP for AI-assisted debugging
- **Development Tools** - `prompt.txt` for notes and prompts (git-ignored)

---

<details>
<summary>📋 <strong>Detailed Configuration</strong></summary>

## Prerequisites

- Node.js 22.x
- npm (comes with Node.js)

## Sentry Setup (Optional)

1. Create account at [sentry.io](https://sentry.io)
2. Create new Next.js project
3. Add DSN to `.env.local`:
```bash
NEXT_PUBLIC_SENTRY_DSN=https://your-dsn@sentry.io/your-project-id
```

## Features

- ✅ Error tracking & performance monitoring
- ✅ Global error boundaries
- ✅ Source maps for debugging
- ✅ AI assistant integration
- ✅ Development testing tools
- ✅ Development notes file (`prompt.txt`) - git-ignored for personal use

## Testing Sentry

Visit the home page and use the test buttons to verify Sentry integration.

</details>

<details>
<summary>🤖 <strong>AI Integration Setup</strong></summary>

## Sentry MCP Integration

AI assistants can directly access your Sentry data for enhanced debugging.

### Supported Clients
- **Cursor**: Pre-configured
- **Claude Desktop**: Use generated `claude_desktop_config.json`
- **Claude.ai**: Add `https://mcp.sentry.dev/sse` in Settings
- **Windsurf**: Configure via Cascade (CMD + L)
- **VS Code**: CMD+Shift+P → "MCP: Add Server"

### AI Prompts Examples
- "Check Sentry for errors in `file.tsx`"
- "Diagnose issue `[issue-id]` and propose solutions"
- "Tell me about recent issues in my project"

</details>

<details>
<summary>🎨 <strong>Customization</strong></summary>

## Available Scripts
```bash
npm run dev      # Development server
npm run build    # Production build
npm run start    # Production server
npm run lint     # ESLint
```

## Development Files
- **`prompt.txt`**: Personal notes, prompts, and development ideas
  - Automatically created during setup
  - Git-ignored for privacy
  - Use for AI prompts, TODO lists, and project notes

## Remove Sentry
```bash
npm uninstall @sentry/nextjs
rm instrumentation-client.ts sentry.*.config.ts instrumentation.ts
```

## Deployment
Works on Vercel, Netlify, Railway, Render, AWS, GCP.

</details>

---

**Happy vibe coding! 🎵✨**
