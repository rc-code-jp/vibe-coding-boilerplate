#!/bin/bash

# Vibe Coding Boilerplate Setup Script
# This script automates the initial setup process for development

set -e  # Exit on any error

echo "🚀 Vibe Coding Boilerplate Setup"
echo "================================="
echo ""

# Function to ask yes/no questions
ask_yes_no() {
    local question="$1"
    local default="$2"
    local answer
    
    if [ "$default" = "y" ]; then
        echo -n "$question [Y/n]: "
    else
        echo -n "$question [y/N]: "
    fi
    
    read answer
    
    if [ -z "$answer" ]; then
        answer="$default"
    fi
    
    case "$answer" in
        [Yy]|[Yy][Ee][Ss]) return 0 ;;
        *) return 1 ;;
    esac
}

# Function to safely read input with default
read_with_default() {
    local prompt="$1"
    local default="$2"
    local value
    
    echo -n "$prompt [$default]: "
    read value
    
    if [ -z "$value" ]; then
        echo "$default"
    else
        echo "$value"
    fi
}

echo "📋 Step 1: Project Setup"
echo "------------------------"

# Check if this is a fresh clone or existing project
if ask_yes_no "🗑️  Clear the README.md and replace with basic project template?" "y"; then
    echo "Clearing README.md..."
    cat > README.md << 'EOF'
# Your Project Name

Description of your project.

## Getting Started

```bash
npm install
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) to view the application.

## Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run start` - Start production server
- `npm run lint` - Run ESLint

## Technologies

- Next.js 15
- React 19
- TypeScript
- Tailwind CSS
- Sentry (Error tracking)

EOF
    echo "✅ README.md cleared and replaced with basic template"
fi

echo ""
echo "📦 Step 2: Dependencies"
echo "----------------------"

if ask_yes_no "📥 Install npm dependencies?" "y"; then
    echo "Installing dependencies..."
    npm install
    echo "✅ Dependencies installed"
else
    echo "⚠️  Skipping dependency installation"
fi

echo ""
echo "🔧 Step 3: Environment Configuration"
echo "-----------------------------------"

if [ -f "env.example" ]; then
    if ask_yes_no "📄 Copy env.example to .env.local?" "y"; then
        cp env.example .env.local
        echo "✅ Environment file created"
        
        if ask_yes_no "⚙️  Configure Sentry settings interactively?" "n"; then
            echo ""
            echo "🔍 Sentry Configuration"
            echo "----------------------"
            echo "If you don't have a Sentry project yet:"
            echo "1. Go to https://sentry.io and create an account"
            echo "2. Create a new Next.js project"
            echo "3. Copy the DSN from your project settings"
            echo ""
            
            sentry_dsn=$(read_with_default "Enter your Sentry DSN (or press Enter to skip)" "")
            
            if [ -n "$sentry_dsn" ]; then
                # Update .env.local with Sentry DSN
                if grep -q "NEXT_PUBLIC_SENTRY_DSN" .env.local; then
                    sed -i.bak "s|NEXT_PUBLIC_SENTRY_DSN=.*|NEXT_PUBLIC_SENTRY_DSN=$sentry_dsn|" .env.local
                else
                    echo "NEXT_PUBLIC_SENTRY_DSN=$sentry_dsn" >> .env.local
                fi
                
                sentry_org=$(read_with_default "Enter your Sentry organization name (optional)" "")
                if [ -n "$sentry_org" ]; then
                    if grep -q "SENTRY_ORG" .env.local; then
                        sed -i.bak "s|SENTRY_ORG=.*|SENTRY_ORG=$sentry_org|" .env.local
                    else
                        echo "SENTRY_ORG=$sentry_org" >> .env.local
                    fi
                fi
                
                sentry_project=$(read_with_default "Enter your Sentry project name (optional)" "")
                if [ -n "$sentry_project" ]; then
                    if grep -q "SENTRY_PROJECT" .env.local; then
                        sed -i.bak "s|SENTRY_PROJECT=.*|SENTRY_PROJECT=$sentry_project|" .env.local
                    else
                        echo "SENTRY_PROJECT=$sentry_project" >> .env.local
                    fi
                fi
                
                # Clean up backup file
                rm -f .env.local.bak
                
                echo "✅ Sentry configuration updated"
            else
                echo "⚠️  Sentry configuration skipped"
            fi
        fi
    else
        echo "⚠️  Environment file setup skipped"
    fi
else
    echo "⚠️  env.example not found, skipping environment setup"
fi

echo ""
echo "🧹 Step 4: Cleanup"
echo "------------------"

if ask_yes_no "🗑️  Remove this setup script?" "y"; then
    echo "Removing setup script..."
    rm -f setup.sh
    echo "✅ Setup script removed"
fi

echo ""
echo "🎉 Setup Complete!"
echo "=================="
echo ""
echo "Your project is ready for development!"
echo ""

if ask_yes_no "🚀 Start the development server now?" "y"; then
    echo ""
    echo "Starting development server..."
    echo "🌐 Opening http://localhost:3000"
    echo ""
    echo "Press Ctrl+C to stop the server"
    echo ""
    
    # Try to open browser (works on macOS and most Linux distributions)
    if command -v open > /dev/null; then
        # macOS
        (sleep 3 && open http://localhost:3000) &
    elif command -v xdg-open > /dev/null; then
        # Linux
        (sleep 3 && xdg-open http://localhost:3000) &
    fi
    
    npm run dev
else
    echo ""
    echo "To start development:"
    echo "  npm run dev"
    echo ""
    echo "Then open http://localhost:3000 in your browser"
    echo ""
    echo "Happy coding! 🎵✨"
fi 