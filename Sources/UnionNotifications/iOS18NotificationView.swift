//
//  iOS18NotificationView.swift
//  union-notifications
//
//  Created by Ben Sage on 9/23/25.
//

import SwiftUI
import UnionButtons

struct iOS18NotificationView: View {
    let appName: String
    let onAllow: () -> Void
    
    private var localizedTitle: String {
        String(format: String(localized: "\"%@\" Would Like to Send You Notifications", bundle: .module), appName)
    }

    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 4) {
                Text(LocalizedStringKey(localizedTitle))
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
                    .lineSpacing(2)
                    .fixedSize(horizontal: false, vertical: true)

                Text("Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.", bundle: .module)
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
                    Text("Don't Allow", bundle: .module)
                        .font(.system(size: 17, weight: .regular))
                        .foregroundStyle(Color.blue.opacity(0.3))
                        .frame(maxWidth: .infinity, minHeight: 44)

                    Divider()
                        .frame(width: 1/3)

                    Button(action: {
                        onAllow()
                    }) {
                        Text("Allow", bundle: .module)
                            .font(.system(size: 17, weight: .medium))
                            .foregroundStyle(Color.blue)
                            .frame(maxWidth: .infinity, minHeight: 44)
                    }
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
}

#Preview {
    iOS18NotificationView(appName: "TestApp") {
        print("Allow tapped")
    }
}
