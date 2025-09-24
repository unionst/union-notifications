# UnionNotifications

A SwiftUI package that provides a customizable notification permission dialog that mimics the iOS system notification permission UI.

## Requirements

- iOS 18.0+
- Swift 5.9+

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/unionst/union-notifications.git", from: "1.0.0")
]
```

## Usage

### Basic Usage

```swift
import UnionNotifications

// Simple notification dialog
NotificationsView()

// With action callback
NotificationsView {
    // Called when user taps "Allow" and grants permission
    print("Notifications enabled!")
}
```

### Custom Implementation

```swift
struct ContentView: View {
    var body: some View {
        NotificationsView {
            // Handle notification permission granted
        }
    }
}
```

## Features

- System-style notification permission dialog
- Automatic app name detection from Bundle
- Requests actual notification permissions when "Allow" is tapped
- Localized for 8 languages
- Adaptive design for iOS 18 and iOS 26+

## Localization

Supported languages:
- English
- Spanish (es)
- French (fr)
- German (de)
- Japanese (ja)
- Chinese Simplified (zh-Hans)
- Portuguese Brazil (pt-BR)
- Italian (it)

## iOS Version Support

- **iOS 18-25**: Classic iOS notification dialog style
- **iOS 26+**: Modern design with Liquid Glass effects (when available)

## License

MIT
