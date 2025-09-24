# UnionNotifications

A SwiftUI library that provides system-style notification permission dialogs with modern iOS design patterns. Features adaptive layouts for iOS 18+ and iOS 26+ with Liquid Glass effects.

## Features

- 🎨 **Adaptive Design**: Automatically switches between iOS 18 and iOS 26+ styles
- 🌍 **Internationalization**: Built-in support for 8 languages (English, Spanish, French, German, Japanese, Chinese, Portuguese, Italian)
- ✨ **Modern APIs**: Uses iOS 17+ async/await and structured concurrency
- 🧊 **Liquid Glass**: iOS 26+ version features Liquid Glass effects and glass buttons
- 📱 **System-like**: Mimics native iOS notification permission dialogs
- 🔧 **Customizable**: Optional action closures and permission handling

## Requirements

- iOS 18.0+
- Swift 5.9+

## Installation

### Swift Package Manager

Add the package dependency to your Package.swift file:

```swift
dependencies: [
    .package(url: "https://github.com/unionst/union-buttons.git", from: "2.0.0")
]
```

Or add it directly in Xcode using File > Add Packages...

## Usage

### Basic Usage

```swift
import SwiftUI
import UnionNotifications

struct ContentView: View {
    @State private var showNotificationDialog = false
    
    var body: some View {
        Button("Request Notifications") {
            showNotificationDialog = true
        }
        .sheet(isPresented: $showNotificationDialog) {
            ZStack {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                
                NotificationsView()
            }
        }
    }
}
```

### With Custom Action

```swift
NotificationsView {
    print("User granted notification permissions!")
    // Handle permission granted
}
```

### Testing

Use the built-in test view to preview and test the notification dialog:

```swift
import UnionNotifications

NotificationTestView()
```

## Localization

The library automatically localizes text based on the user's device language. Supported languages:

- 🇺🇸 English
- 🇪🇸 Spanish
- 🇫🇷 French
- 🇩🇪 German
- 🇯🇵 Japanese
- 🇨🇳 Chinese (Simplified)
- 🇧🇷 Portuguese (Brazil)
- 🇮🇹 Italian

## iOS Version Differences

### iOS 18-25
- Classic material background
- Traditional button styles with UnionButtonStyle press effects
- Standard iOS notification dialog layout

### iOS 26+
- Liquid Glass effects with `GlassEffectContainer`
- Glass button styles (`GlassButtonStyle`, `GlassProminentButtonStyle`)
- Modern typography and spacing
- Enhanced visual effects and animations

## Dependencies

- [UnionButtons](https://github.com/unionst/union-buttons) - Provides enhanced button styles and press effects

## License

This library is released under the MIT license. See LICENSE for details.
