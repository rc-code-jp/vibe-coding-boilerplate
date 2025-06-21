# Vibe Coding Boilerplate

Modern Next.js starter with Sentry integration for error tracking and AI-assisted debugging.

## 🎵 The Vibe Coding Experience

**エラーに悩まされない開発体験を実現**

Sentryの統合により、エラーを素早く特定・解決できるため、vibe coding中にエラーで手を止められることがありません。コーディングのフローを維持しながら、安心して開発に集中できます。

- 🚀 **即座のエラー検知**: リアルタイムでエラーを捕捉
- 🔍 **AI支援デバッグ**: Sentry MCPによる自動的な根本原因分析
- ⚡ **高速解決**: 詳細なスタックトレースで迅速な問題解決
- 🎯 **集中力維持**: エラー調査に時間を取られず、創造的なコーディングに専念

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
