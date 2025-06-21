# Vibe Coding Boilerplate

A modern Next.js starter template with Sentry integration for error tracking and performance monitoring. Perfect for rapid prototyping and vibe coding sessions.

> **📝 Getting Started**: This is a starter template. We recommend clearing this README and replacing it with your project-specific documentation before beginning development.

**🎯 Stay focused on development with integrated Sentry error tracking!**
- Real-time error detection to quickly identify issues
- Detailed stack traces for efficient debugging
- Performance monitoring to identify optimization opportunities

**🤖 Enhanced with Sentry MCP integration - AI assistants can directly access Sentry error data to provide targeted solutions!**

## 📋 Prerequisites

- Node.js 22.x
- npm (comes with Node.js)

## 🚀 Quick Start

### Option 1: Automated Setup (Recommended)

Run the setup script to automatically configure everything:

```bash
git clone https://github.com/your-username/vibe-coding-boilerplate.git
cd vibe-coding-boilerplate
./setup.sh
```

The script will:
- Clear this README and replace with a basic project template
- Install dependencies
- Copy environment configuration
- Optionally configure Sentry settings
- Start the development server

### Option 2: Manual Setup

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/vibe-coding-boilerplate.git
cd vibe-coding-boilerplate
```

### 2. Install Dependencies

```bash
npm install
```

### 3. Set Up Environment Variables

Copy the example environment file and configure your settings:

```bash
cp env.example .env.local
```

### 4. Set Up Sentry (Optional but Recommended)

1. Create a Sentry account at [sentry.io](https://sentry.io)
2. Create a new Next.js project in your Sentry dashboard
3. Copy your DSN from the project settings
4. Update your `.env.local` file with your Sentry configuration:

```bash
# Sentry Configuration (Required)
NEXT_PUBLIC_SENTRY_DSN=https://your-dsn@sentry.io/your-project-id

# Optional: For source map uploads in production
SENTRY_ORG=your-org-name
SENTRY_PROJECT=your-project-name
SENTRY_AUTH_TOKEN=your-auth-token
```

> **Note**: If you skip Sentry setup, the app will still work perfectly. Error tracking features will simply be disabled.

### 5. Start Development Server

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
- ✅ **Cursor Rules** - Pre-configured AI assistant rules for Sentry integration

### File Structure
```
├── .cursor/
│   └── rules/
│       └── sentry-error-handling.mdc  # Cursor AI rules for Sentry integration
├── src/
│   ├── app/
│   │   ├── components/
│   │   │   └── SentryTestButton.tsx    # Sentry testing component
│   │   ├── global-error.tsx            # Global error boundary
│   │   ├── layout.tsx                  # Root layout
│   │   └── page.tsx                    # Home page
├── instrumentation-client.ts           # Client-side Sentry config
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

- **Cursor**: Pre-configured with project rules
- **Claude Desktop**: Use the `claude_desktop_config.json` configuration
- **Claude.ai**: Add `https://mcp.sentry.dev/sse` in Settings → Profile → Integrations
- **Windsurf**: Configure via Cascade (CMD + L)
- **VS Code with GitHub Copilot**: Add server via `CMD+Shift+P` → `MCP: Add Server`

### Setup MCP Integration

#### For Cursor

**This project includes pre-configured MCP settings!**

- Cursor rules are already set up in `.cursor/rules/sentry-error-handling.mdc`
- AI assistant will automatically prioritize Sentry MCP tools for error investigation
- No additional configuration required

#### For Other Clients
- **Claude.ai**: Add `https://mcp.sentry.dev/sse` in Settings → Profile → Integrations
- **Windsurf**: Use "Configure MCP" option in Cascade (CMD + L)
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

### Verifying MCP Configuration

1. **Check Cursor Settings**:
   - Cursor → Settings → MCP
   - Verify Sentry tools appear in "Available Tools" section

2. **Check Logs**:
   - View → Output → "Cursor MCP"
   - Monitor for error messages or connection status

### Troubleshooting

**"Failed to create client" error**:
- Ensure Node.js 18+ is installed
- Check `which npx` for npx path and use full path if needed

**Server connection errors**:
- Verify internet connection
- Test access to `https://mcp.sentry.dev/sse`

## 🎨 Customization

### Remove Sentry (If Not Needed)
If you don't want Sentry integration:

1. Remove Sentry dependencies:
```bash
npm uninstall @sentry/nextjs
```

2. Delete Sentry configuration files:
```bash
rm instrumentation-client.ts sentry.*.config.ts instrumentation.ts
```

3. Update `next.config.ts` to remove Sentry wrapper
4. Remove Sentry-related components and imports
5. Delete `.cursor/rules/sentry-error-handling.mdc` if not needed

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
