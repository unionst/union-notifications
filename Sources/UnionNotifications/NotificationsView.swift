import SwiftUI
import UserNotifications
import UnionButtons

public struct NotificationsView: View {
    private let appName: String
    private let action: () -> Void
    private let onDeny: (() -> Void)?
    private let requestSystemPermission: Bool

    public init(
        requestSystemPermission: Bool = true,
        action: @escaping () -> Void = {},
        onDeny: (() -> Void)? = nil
    ) {
        self.appName = Bundle.main.displayName ?? "App"
        self.requestSystemPermission = requestSystemPermission
        self.action = action
        self.onDeny = onDeny
    }
    
    public var body: some View {
        Group {
            if #available(iOS 26, *) {
                iOS26NotificationView(appName: appName, onAllow: handleAllow, onDeny: handleDeny)
            } else {
                iOS18NotificationView(appName: appName, onAllow: handleAllow, onDeny: handleDeny)
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
        let granted = try? await UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound])
        if granted == true {
            action()
            return
        }
        
        handleDeny()
    }

    private func handleDeny() {
        onDeny?()
    }
}


#Preview("iOS 18") {
    ZStack {
        Color.black.opacity(0.3)
            .ignoresSafeArea()

        iOS18NotificationView(appName: "TestApp") {
            print("iOS 18 Allow tapped")
        } onDeny: {
            print("iOS 18 Deny tapped")
        }
    }
}

#Preview("iOS 26") {
    ZStack {
        Color.black.opacity(0.3)
            .ignoresSafeArea()

        NotificationsView {
            print("iOS 26 Allow tapped")
        } onDeny: {
            print("iOS 26 Deny tapped")
        }
    }
}

#Preview {
    ZStack {
        Color.black.opacity(0.3)
            .ignoresSafeArea()

        NotificationsView {
            print("Allow tapped")
        } onDeny: {
            print("Deny tapped")
        }
    }
}

