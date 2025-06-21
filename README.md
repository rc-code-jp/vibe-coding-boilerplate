# Vibe Coding Boilerplate

A modern Next.js starter template with Sentry integration for error tracking and performance monitoring. Perfect for rapid prototyping and vibe coding sessions.

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
└── next.config.ts                      # Next.js + Sentry configuration
```

## 🧪 Testing Sentry Integration

The home page includes test buttons to verify Sentry is working:
- **Test Sentry Error** - Throws and captures a test error
- **Test Sentry Message** - Sends a test message to Sentry

After clicking these buttons, check your Sentry dashboard to see the captured events.

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
