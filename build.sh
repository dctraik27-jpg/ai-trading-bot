#!/bin/bash
set -e

echo "🔨 Starting build process..."

# Step 1: Install pnpm
echo "📦 Installing pnpm..."
npm install -g pnpm@10.4.1

# Step 2: Install dependencies
echo "📥 Installing dependencies..."
pnpm install

# Step 3: Check if client/index.html exists
if [ ! -f "client/index.html" ]; then
  echo "❌ ERROR: client/index.html not found!"
  ls -la client/
  exit 1
fi

echo "✅ client/index.html found"

# Step 4: Build the project
echo "🏗️  Building project..."
pnpm build

# Step 5: Verify dist directory
if [ ! -d "dist/public" ]; then
  echo "❌ ERROR: dist/public directory not created!"
  ls -la dist/
  exit 1
fi

echo "✅ dist/public directory created"

# Step 6: Verify dist/index.js exists
if [ ! -f "dist/index.js" ]; then
  echo "❌ ERROR: dist/index.js not found!"
  ls -la dist/
  exit 1
fi

echo "✅ dist/index.js created"

echo "✅ Build completed successfully!"
