//
//  SwiftUIView.swift
//  union-notifications
//
//  Created by Ben Sage on 9/23/25.
//

import SwiftUI

@available(iOS 26, *)
struct iOS26NotificationView: View {
    let appName: String
    let onAllow: () -> Void
    @Namespace private var glassNamespace
    
    private var localizedTitle: String {
        String(format: String(localized: "\"%@\" Would Like to Send You Notifications", bundle: .module), appName)
    }

    var body: some View {
        GlassEffectContainer(spacing: 0) {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 7) {
                    Text(LocalizedStringKey(localizedTitle))
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(.primary)
                        .lineLimit(2)
                        .lineSpacing(1.6)

                    Text("Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.", bundle: .module)
                        .font(.system(size: 15, weight: .regular))
                        .foregroundColor(.secondary)
                        .lineLimit(3)
                        .lineSpacing(2.0)
                }
                .padding(.horizontal, 30)

                HStack(spacing: 8) {
                    Button {
                        // Don't Allow action - no-op
                    } label: {
                        Text("Don't Allow", bundle: .module)
                            .font(.body.weight(.medium))
                            .foregroundStyle(.secondary)
                            .frame(maxWidth: .infinity)
                            .frame(height: 34)
                    }
                    .buttonStyle(GlassButtonStyle())
                    .disabled(true)

                    Button {
                        onAllow()
                    } label: {
                        Text("Allow", bundle: .module)
                            .font(.body.weight(.semibold))
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 34)
                    }
                    .buttonStyle(GlassProminentButtonStyle())
                }
                .padding(.horizontal, 16)
            }
            .padding(.top, 22)
            .padding(.bottom, 16)
        }
        .frame(width: 320)
        .glassEffect(.regular, in: .rect(cornerRadius: 32))
    }
}

#Preview {
    if #available(iOS 26, *) {
        iOS26NotificationView(appName: "TestApp") {
            print("Allow tapped")
        }
    } else {
        // Fallback on earlier versions
    }
}
