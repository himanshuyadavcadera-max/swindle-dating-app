#!/bin/bash

# 🚀 Auth0 Configuration Helper for Swindle Dating App
# Run this script after getting your Client ID from Auth0

echo "🎯 Swindle Dating App - Auth0 Setup"
echo "=================================="
echo ""

echo "📋 STEP 1: Get Your Client ID"
echo "1. Go to: https://manage.auth0.com/dashboard/us/dev-ih7iq83s64ogb00i/applications"
echo "2. Click 'Create Application'"
echo "3. Name: 'Swindle Dating App'"
echo "4. Type: 'Single Page Web Applications'"
echo "5. Copy the Client ID"
echo ""

echo "📝 STEP 2: Configure URLs in Auth0"
echo "Add these URLs to your application settings:"
echo ""
echo "Allowed Callback URLs:"
echo "https://swindle-dating-app.netlify.app/login-demo.html"
echo ""
echo "Allowed Logout URLs:"
echo "https://swindle-dating-app.netlify.app"
echo ""
echo "Allowed Web Origins:"
echo "https://swindle-dating-app.netlify.app"
echo ""

read -p "📱 Enter your Client ID from Auth0: " CLIENT_ID

if [ -z "$CLIENT_ID" ]; then
    echo "❌ No Client ID provided. Exiting..."
    exit 1
fi

echo ""
echo "🔧 Updating configuration files..."

# Update main login file
sed -i.bak "s/PASTE_YOUR_CLIENT_ID_HERE/$CLIENT_ID/g" login-demo.html
echo "✅ Updated login-demo.html"

# Update deployment version
sed -i.bak "s/PASTE_YOUR_CLIENT_ID_HERE/$CLIENT_ID/g" swindler-deployment/login-demo.html
echo "✅ Updated swindler-deployment/login-demo.html"

echo ""
echo "🎉 Configuration complete!"
echo ""
echo "📦 Next steps:"
echo "1. git add ."
echo "2. git commit -m \"Configure Auth0 Client ID for phone authentication\""
echo "3. git push"
echo ""
echo "🚀 Your app will now use real Auth0 authentication!"
echo "📱 Test at: https://swindle-dating-app.netlify.app"
