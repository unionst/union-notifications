import SwiftUI
import UserNotifications
import UnionButtons

public struct NotificationsView: View {
    private let appName: String
    private let action: () -> Void
    private let requestSystemPermission: Bool
    
    public init(
        requestSystemPermission: Bool = true,
        action: @escaping () -> Void = {}
    ) {
        self.appName = Bundle.main.displayName ?? "App"
        self.requestSystemPermission = requestSystemPermission
        self.action = action
    }
    
    public var body: some View {
        if #available(iOS 26, *) {
            iOS26NotificationView(appName: appName, onAllow: handleAllow)
        } else {
            iOS18NotificationView(appName: appName, onAllow: handleAllow)
        }
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

#Preview {
    ZStack {
        Color.black.opacity(0.3)
            .ignoresSafeArea()
        
        NotificationsView {
            print("Allow tapped")
        }
    }
}

