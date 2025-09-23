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
        VStack(spacing: 0) {
            VStack(spacing: 4) {
                Text("“\(appName)” Would Like to Send You Notifications")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
                    .lineSpacing(2)
                    .fixedSize(horizontal: false, vertical: true)
                
                Text("Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.")
                    .font(.system(size: 13, weight: .regular))
                    .lineSpacing(0.4)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 16)

            VStack(spacing: 0) {
                Divider()

                HStack(spacing: 0) {
                    Text("Don’t Allow")
                        .font(.system(size: 17, weight: .regular))
                        .foregroundStyle(Color.blue.opacity(0.3))
                        .frame(maxWidth: .infinity, minHeight: 44)
                    
                    Divider()
                        .frame(width: 1/3)
                    
                    Button("Allow") {
                        if requestSystemPermission {
                            Task {
                                await requestNotificationPermission()
                            }
                        } else {
                            action()
                        }
                    }
                    .font(.system(size: 17, weight: .medium))
                    .foregroundStyle(Color.blue)
                    .frame(maxWidth: .infinity, minHeight: 44)
                    .contentShape(Rectangle())
                    .buttonStyle(UnionButtonStyle(nil) { label, isPressed in
                        label
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .background(
                                Rectangle()
                                    .fill(Color.primary.opacity(isPressed ? 0.1 : 0))
                            )
                    })
                }
                .frame(height: 44)
            }
        }
        .background {
            Rectangle()
                .fill(.regularMaterial)
        }
        .frame(width: 270)
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
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

extension Bundle {
    var displayName: String? {
        return object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ??
               object(forInfoDictionaryKey: "CFBundleName") as? String
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

