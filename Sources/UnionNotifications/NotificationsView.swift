import SwiftUI
import UserNotifications
import UnionButtons

public struct NotificationsView: View {
    private let appName: String
    private let action: () -> Void
    private let onDontAllow: (() -> Void)?
    private let requestSystemPermission: Bool
    
    public init(
        requestSystemPermission: Bool = true,
        action: @escaping () -> Void = {},
        onDontAllow: (() -> Void)? = nil
    ) {
        self.appName = (Bundle.main.displayName) ?? "App"
        self.requestSystemPermission = requestSystemPermission
        self.action = action
        self.onDontAllow = onDontAllow
    }
    
    public var body: some View {
        Group {
            if #available(iOS 26, *) {
                iOS26NotificationView(appName: appName, onAllow: handleAllow)
            } else {
                iOS18NotificationView(appName: appName, onAllow: handleAllow, onDontAllow: onDontAllow)
            }
        }
        .centerInWindow()
    }
    
    private func handleAllow() {
        if requestSystemPermission {
            Task {
                await requestNotificationPermission()
            }
        } else {
            action()
        }
    }
    
    @MainActor
    private func requestNotificationPermission() async {
        do {
            let granted = try await UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound])
            if granted {
                action()
            }
        } catch {
            // Do nothing on error or denial
        }
    }
}


#Preview("iOS 18") {
    ZStack {
        Color.black.opacity(0.3)
            .ignoresSafeArea()
        
        iOS18NotificationView(appName: "TestApp") {
            print("iOS 18 Allow tapped")
        } onDontAllow: {
            print("iOS 18 Don't Allow tapped")
        }
    }
}

#Preview("iOS 26 - Glass Test") {
    ZStack {
        // Colorful gradient background to test glass blur
        LinearGradient(
            colors: [.blue, .purple, .pink, .orange],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
        
        // Some text behind to see if it blurs through
        VStack(spacing: 20) {
            Text("BACKGROUND TEXT")
                .font(.system(size: 60, weight: .black))
                .foregroundColor(.white)
            
            Text("You should see this blurred through the dialog")
                .font(.title)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding()
        }
        
        // Your dialog
        if #available(iOS 26, *) {
            iOS26NotificationView(
                appName: "TestApp",
                onAllow: {
                    print("Allow tapped")
                },
                onDontAllow: {
                    print("Don't Allow tapped")
                }
            )
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview("iOS 26 - Photo Background") {
    ZStack {
        // Simulated home screen with colorful icons
        Color.blue.opacity(0.3)
            .ignoresSafeArea()
        
        VStack(spacing: 40) {
            HStack(spacing: 40) {
                Circle().fill(.red).frame(width: 60, height: 60)
                Circle().fill(.green).frame(width: 60, height: 60)
                Circle().fill(.blue).frame(width: 60, height: 60)
            }
            HStack(spacing: 40) {
                Circle().fill(.orange).frame(width: 60, height: 60)
                Circle().fill(.purple).frame(width: 60, height: 60)
                Circle().fill(.pink).frame(width: 60, height: 60)
            }
        }
        .offset(y: -200)
        
        // Your dialog
        if #available(iOS 26, *) {
            iOS26NotificationView(
                appName: "TestApp",
                onAllow: {
                    print("Allow tapped")
                },
                onDontAllow: {
                    print("Don't Allow tapped")
                }
            )
        } else {
            // Fallback on earlier versions
        }
    }
}
#Preview {
    ZStack {
        Color.black.opacity(0.3)
            .ignoresSafeArea()
        
        NotificationsView {
            print("Allow tapped")
        }
    }
}

