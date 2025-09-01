# 🔥 Firebase OTP Setup Guide

## Quick Setup Steps:

### 1. Create Firebase Project
1. Go to [console.firebase.google.com](https://console.firebase.google.com)
2. Click **"Create a project"**
3. Name it **"swindle-dating-app"** (or any name)
4. Enable Google Analytics (optional)
5. Click **"Create project"**

### 2. Enable Phone Authentication
1. In Firebase Console, go to **Authentication** → **Sign-in method**
2. Click **"Phone"** and **Enable** it
3. Add your domain to authorized domains:
   - `localhost` (for testing)
   - Your Netlify domain: `swindle-dating-app.netlify.app`

### 3. Get Configuration
1. In Firebase Console, go to **Project Settings** (gear icon)
2. Scroll down to **"Your apps"**
3. Click **"Add app"** → **Web** (</> icon)
4. Name it **"Swindle Web App"**
5. Copy the **firebaseConfig** object

### 4. Update Your Code
Replace the config in `login-demo.html`:

```javascript
const firebaseConfig = {
  apiKey: "your-actual-api-key",
  authDomain: "your-project.firebaseapp.com",
  projectId: "your-project-id",
  storageBucket: "your-project.appspot.com",
  messagingSenderId: "your-sender-id",
  appId: "your-app-id"
};
```

### 5. Test Phone Numbers (Optional)
For testing without real SMS:
1. Go to **Authentication** → **Sign-in method** → **Phone**
2. Scroll to **"Phone numbers for testing"**
3. Add test numbers like:
   - Phone: `+91 9876543210`
   - Code: `123456`

## 🚀 Live Demo Ready!

Once you update the Firebase config, your app will:
- ✅ Send **real SMS** to users' phones
- ✅ Work **worldwide** (not just demo)
- ✅ Handle **rate limiting** automatically
- ✅ **Secure** authentication flow
- ✅ **Free tier** available (good for thousands of users)

## Cost Information:
- **Free**: 10,000 phone verifications/month
- **Paid**: $0.06 per verification after free tier

Your dating app will now have **enterprise-grade** phone authentication! 🔥

## Deployment:
After updating the config, just push to GitHub and Netlify will auto-deploy with real OTP functionality.

```bash
git add login-demo.html
git commit -m "Add Firebase OTP Authentication"
git push
```

Ready for real users! 🎉
