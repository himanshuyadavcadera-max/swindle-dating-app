# Swindle - Flutter Login App

A Flutter application with mobile number-based authentication and user registration.

## Features

### 🔐 Authentication Flow
- **Login Screen**: Enter mobile number to authenticate
- **Smart Routing**: 
  - If mobile number is registered → Navigate to Home Screen
  - If mobile number is new → Navigate to Registration Screen
- **Registration Screen**: New users enter first name and last name
- **Home Screen**: Personalized dashboard for authenticated users

### 📱 User Interface
- Clean, modern Material Design interface
- Form validation for mobile numbers and names
- Loading states and error handling
- Responsive design for different screen sizes

### 💾 Data Storage
- Uses `shared_preferences` for local data persistence
- Stores user registration status and personal information
- No external database required for basic functionality

## Project Structure

```
lib/
├── main.dart                    # App entry point
└── screens/
    ├── login_screen.dart        # Mobile number authentication
    ├── registration_screen.dart # New user registration
    └── home_screen.dart         # Main dashboard
```

## Getting Started

### Prerequisites
- Flutter SDK (3.1.0 or higher)
- Dart SDK
- IDE (VS Code, Android Studio, etc.)

### Installation

1. **Clone or download the project**
2. **Install dependencies:**
   ```bash
   flutter pub get
   ```
3. **Run the app:**
   ```bash
   flutter run
   ```

### Testing Different Scenarios

#### New User Flow:
1. Enter any 10-digit mobile number (e.g., 9876543210)
2. Tap "Continue"
3. Fill in first name and last name
4. Tap "Complete Registration"
5. Navigate to home screen

#### Returning User Flow:
1. Enter the same mobile number used before
2. Tap "Continue"
3. Directly navigate to home screen with saved user data

## Dependencies

- `flutter`: SDK for cross-platform development
- `shared_preferences: ^2.2.2`: Local data storage
- `cupertino_icons: ^1.0.2`: iOS-style icons

## Key Components

### Login Screen (`login_screen.dart`)
- Mobile number input with validation
- Checks if user is already registered
- Routes to appropriate next screen

### Registration Screen (`registration_screen.dart`)
- First name and last name input
- Saves user data locally
- Adds user to registered users list

### Home Screen (`home_screen.dart`)
- Displays user's full name and mobile number
- Feature cards for future functionality
- Logout functionality

## Technical Implementation

### Data Storage Structure
```
SharedPreferences Keys:
- 'registered_users': List<String> of mobile numbers
- 'user_{phoneNumber}_firstName': String
- 'user_{phoneNumber}_lastName': String
```

### Validation Rules
- **Mobile Number**: Exactly 10 digits, numbers only
- **Names**: Minimum 2 characters, no empty strings

### Navigation Flow
```
LoginScreen
    ├── If registered → HomeScreen
    └── If new user → RegistrationScreen → HomeScreen
```

## Future Enhancements

- [ ] OTP verification for mobile numbers
- [ ] Backend API integration
- [ ] User profile editing
- [ ] Biometric authentication
- [ ] Dark mode support
- [ ] Multi-language support

## Development Notes

- Uses Flutter's built-in Material Design components
- Implements proper state management with StatefulWidget
- Includes comprehensive form validation
- Follows Flutter best practices for navigation
- Responsive design principles applied

## Testing

Run tests with:
```bash
flutter test
```

Current test coverage includes:
- App launch and initial screen display
- Form validation functionality

---

**Note**: This is a demonstration app with local storage. For production use, implement proper backend authentication and security measures.
