#!/bin/bash

# This script starts a local Jekyll server with LiveReload enabled.
# This is so that we can see changes in real-time as we edit the site, rather than having to commit and push to GitHub each time.

echo "🚀 Starting Jekyll Development Server..."

# Make sure bundler is installed
if ! command -v bundle &> /dev/null; then
    echo "Bundler not found. Installing..."
    gem install bundler
fi

# Install missing dependencies
echo "📦 Installing/Updating dependencies..."
bundle install

# Serve Jekyll with LiveReload for automatic refresh
echo "🌍 Launching Jekyll Server (LiveReload enabled)..."
bundle exec jekyll serve --livereload