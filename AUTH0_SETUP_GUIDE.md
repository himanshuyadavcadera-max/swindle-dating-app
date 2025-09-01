# Auth0 Setup Guide for Swindle Dating App

## 🚀 Quick Setup Instructions

### Step 1: Get Your Auth0 Credentials

1. **Go to your Auth0 Dashboard**: https://manage.auth0.com/dashboard/us/dev-ih7iq83s64ogb00i/
2. **Navigate to Applications** → **Applications**
3. **Create a New Application**:
   - Name: `Swindle Dating App`
   - Type: `Single Page Application`
   - Click **Create**

4. **Get your credentials**:
   - **Domain**: `dev-ih7iq83s64ogb00i.us.auth0.com` (already in code)
   - **Client ID**: Copy this from the Application settings

### Step 2: Configure Application Settings

In your Auth0 Application settings:

**Allowed Callback URLs**:
```
https://swindle-dating-app.netlify.app/login-demo.html,
http://localhost:3000/login-demo.html
```

**Allowed Logout URLs**:
```
https://swindle-dating-app.netlify.app,
http://localhost:3000
```

**Allowed Web Origins**:
```
https://swindle-dating-app.netlify.app,
http://localhost:3000
```

### Step 3: Enable Phone Number Authentication

1. **Go to Authentication** → **Database**
2. **Create a new Database Connection**:
   - Name: `swindle-users`
   - Enable **Username-Password-Authentication**

3. **Enable SMS Connection**:
   - Go to **Authentication** → **Passwordless**
   - Enable **SMS**
   - Configure with your SMS provider (Twilio recommended)

### Step 4: Update the Code

Replace `YOUR_CLIENT_ID` in `login-demo.html` with your actual Client ID:

```javascript
const auth0Config = {
    domain: 'dev-ih7iq83s64ogb00i.us.auth0.com',
    clientId: 'YOUR_ACTUAL_CLIENT_ID_HERE', // ← Replace this
    authorizationParams: {
        redirect_uri: window.location.origin + '/login-demo.html',
        connection: 'sms'
    }
};
```

### Step 5: SMS Provider Setup (Twilio)

1. **In Auth0 Dashboard**:
   - Go to **Authentication** → **Passwordless** → **SMS**
   - Choose **Twilio** as provider

2. **Twilio Configuration**:
   - **Account SID**: Get from Twilio Console
   - **Auth Token**: Get from Twilio Console  
   - **From Number**: Your Twilio phone number

### Step 6: Test the Integration

1. Deploy your updated code
2. Visit your app
3. Click "Login with Phone Number"
4. Enter phone number
5. Receive SMS with code
6. Verify and access the dating app

## 🔧 Alternative: Quick Demo Setup

If you want to test without SMS setup:
- The "Demo Login" button bypasses Auth0
- Creates a test user automatically
- No phone verification required

## 📱 Production SMS Costs

- **Twilio**: ~$0.0075 per SMS
- **Auth0**: Free up to 1,000 SMS/month
- **Total**: Very affordable for a dating app

## 🛡️ Security Features

Auth0 provides:
- ✅ Phone number verification
- ✅ Rate limiting (prevent spam)
- ✅ Fraud detection
- ✅ GDPR compliance
- ✅ Enterprise security

## 🚨 Need Help?

1. **Client ID Issues**: Check Application settings in Auth0
2. **SMS Not Working**: Verify Twilio configuration
3. **Callback Errors**: Check allowed URLs match exactly
4. **Demo Mode**: Use the demo button for testing

Your app is ready to use Auth0! Just update the Client ID and you're live! 🎉
