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
        self.appName = Bundle.main.displayName ?? "App"
        self.requestSystemPermission = requestSystemPermission
        self.action = action
        self.onDontAllow = onDontAllow
    }
    
    public var body: some View {
        Group {
            if #available(iOS 26, *) {
                iOS26NotificationView2(appName: appName, onAllow: handleAllow) //REMINDER TO ADD LAST PARAMETER FOR IOS26
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
        }
    }
}

#Preview("iOS 26") {
    ZStack {
        Color.black.opacity(0.3)
            .ignoresSafeArea()
        
        NotificationsView {
            print("iOS 26 Allow tapped")
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

