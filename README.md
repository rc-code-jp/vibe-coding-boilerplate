# Vibe Coding Boilerplate

A modern Next.js starter template with Sentry integration for error tracking and performance monitoring. Perfect for rapid prototyping and vibe coding sessions.

**🎯 Sentryを統合することで、エラーに悩まされることが少なくなり、開発に集中できます！**
- リアルタイムエラー検知で問題を素早く発見
- 詳細なスタックトレースで原因を特定
- パフォーマンス監視で最適化ポイントを把握

**🤖 さらに、Sentry MCP統合により、AIアシスタントが直接Sentryのエラー情報にアクセスして解決策を提案できます！**

## 📋 Prerequisites

- Node.js 22.x
- npm (comes with Node.js)

## 🚀 Quick Start

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/vibe-coding-boilerplate.git
cd vibe-coding-boilerplate
```

### 2. Install Dependencies

```bash
npm install
```

### 3. Set Up Sentry (Optional but Recommended)

1. Create a Sentry account at [sentry.io](https://sentry.io)
2. Create a new Next.js project in your Sentry dashboard
3. Copy your DSN from the project settings
4. Create a `.env.local` file in the root directory:

```bash
# Sentry Configuration (Required)
NEXT_PUBLIC_SENTRY_DSN=https://your-dsn@sentry.io/your-project-id

# Optional: For source map uploads in production
SENTRY_ORG=your-org-name
SENTRY_PROJECT=your-project-name
SENTRY_AUTH_TOKEN=your-auth-token
```

> **Note**: If you skip Sentry setup, the app will still work perfectly. Error tracking features will simply be disabled.

### 4. Start Development Server

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) to see your app running!

## 🛠 What's Included

### Core Technologies
- **Next.js 15** - React framework with App Router
- **React 19** - Latest React features
- **TypeScript** - Type safety
- **Tailwind CSS** - Utility-first CSS framework
- **Sentry** - Error tracking and performance monitoring

### Pre-configured Features
- ✅ **Error Tracking** - Automatic capture of JavaScript errors and exceptions
- ✅ **Performance Monitoring** - Track application performance and slow transactions
- ✅ **Session Replay** - Record user sessions to understand issues (configurable)
- ✅ **Source Maps** - Upload source maps for better error stack traces
- ✅ **Global Error Boundaries** - User-friendly error handling
- ✅ **Development Tools** - Built-in Sentry testing components

### File Structure
```
├── .cursor/
│   └── mcp.json                        # Cursor MCP server config (project-specific)
├── src/
│   ├── app/
│   │   ├── components/
│   │   │   └── SentryTestButton.tsx    # Sentry testing component
│   │   ├── global-error.tsx            # Global error boundary
│   │   ├── layout.tsx                  # Root layout
│   │   └── page.tsx                    # Home page
├── sentry.client.config.ts             # Client-side Sentry config
├── sentry.server.config.ts             # Server-side Sentry config
├── sentry.edge.config.ts               # Edge runtime Sentry config
├── instrumentation.ts                  # Next.js instrumentation hook
├── next.config.ts                      # Next.js + Sentry configuration
└── .nvmrc                              # Node.js version specification
```

## 🧪 Testing Sentry Integration

The home page includes test buttons to verify Sentry is working:
- **Test Sentry Error** - Throws and captures a test error
- **Test Sentry Message** - Sends a test message to Sentry

After clicking these buttons, check your Sentry dashboard to see the captured events.

## 🤖 Sentry MCP Integration

This template includes Sentry MCP (Model Context Protocol) server configuration, allowing AI assistants to directly access your Sentry data for enhanced debugging assistance.

### Supported AI Clients

- **Cursor**: Use the included `mcp.json` configuration
- **Claude Desktop**: Use the `claude_desktop_config.json` configuration
- **Claude.ai**: Add `https://mcp.sentry.dev/sse` in Settings → Profile → Integrations
- **Windsurf**: Configure via Cascade (CMD + L)
- **VS Code with GitHub Copilot**: Add server via `CMD+Shift+P` → `MCP: Add Server`

### Setup MCP Integration

#### For Cursor

**このプロジェクトには既にMCP設定が含まれています！**

- `.cursor/mcp.json` ファイルにSentry MCPサーバーが設定済み
- プロジェクトを開くだけで自動的にSentry MCPが利用可能
- 追加の設定は不要です

#### その他のクライアント
- **Claude.ai**: Settings → Profile → Integrations で `https://mcp.sentry.dev/sse` を追加
- **Windsurf**: Cascade (CMD + L) の "Configure MCP" オプション
- **VS Code with GitHub Copilot**: `CMD+Shift+P` → `MCP: Add Server`

### Example AI Prompts with MCP

Once configured, you can ask your AI assistant:
- "Tell me about the issues in my project"
- "Check Sentry for errors in `file.tsx` and propose solutions"
- "Diagnose issue `[issue-id]` and propose solutions"
- "Use Sentry's Seer to analyze and fix issue `[issue-id]`"
- "Create a new Sentry project for `service-name`"

### Authentication

The MCP server will prompt for OAuth authentication with Sentry when first accessed by your AI client.

### MCP設定の確認方法

1. **Cursor設定画面で確認**:
   - Cursor → Settings → MCP
   - "Available Tools" セクションでSentryツールが表示されることを確認

2. **ログの確認**:
   - View → Output → "Cursor MCP" を選択
   - エラーメッセージや接続状況を確認

### トラブルシューティング

**"Failed to create client" エラーの場合**:
- Node.js 18以上がインストールされていることを確認
- `which npx` でnpxのパスを確認し、フルパスを使用

**サーバー接続エラーの場合**:
- インターネット接続を確認
- `https://mcp.sentry.dev/sse` にアクセス可能か確認

## 🎨 Customization

### Remove Sentry (If Not Needed)
If you don't want Sentry integration:

1. Remove Sentry dependencies:
```bash
npm uninstall @sentry/nextjs
```

2. Delete Sentry configuration files:
```bash
rm sentry.*.config.ts instrumentation.ts
```

3. Update `next.config.ts` to remove Sentry wrapper
4. Remove Sentry-related components and imports

### Styling
- Tailwind CSS is pre-configured
- Global styles in `src/app/globals.css`
- Geist font family included

## 📦 Available Scripts

```bash
npm run dev      # Start development server
npm run build    # Build for production
npm run start    # Start production server
npm run lint     # Run ESLint
```

## 🚀 Deployment

### Vercel (Recommended)
1. Push your code to GitHub
2. Connect your repository to [Vercel](https://vercel.com)
3. Add your Sentry environment variables in Vercel dashboard
4. Deploy!

### Other Platforms
This is a standard Next.js app and can be deployed on any platform that supports Node.js:
- Netlify
- Railway
- Render
- AWS
- Google Cloud Platform

## 🤝 Contributing

This is a starter template - feel free to fork and customize for your needs!

## 📝 License

MIT License - feel free to use this template for any project.

---

Happy vibe coding! 🎵✨
