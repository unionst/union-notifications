//
//  NotificationDialogButton.swift
//  union-notifications
//
//  Created by RJ Kigner on 9/29/25.
//

import Foundation

import SwiftUI
import UnionButtons

struct NotificationDialogButton: View {
    let title: LocalizedStringKey
    let isEnabled: Bool
    let height: CGFloat
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title, bundle: .module)
                .font(.body.weight(.semibold))
                .foregroundStyle(isEnabled ? Color.blue : Color.blue.opacity(0.3))
                .frame(maxWidth: .infinity, minHeight: height)
        }
        .disabled(!isEnabled)
        .contentShape(.rect)
        .buttonStyle(UnionButtonStyle(nil) { label, isPressed in
            label
                .frame(maxWidth: .infinity, minHeight: height)
                .background(
                    Rectangle()
                        .fill(Color.primary.opacity(isPressed ? 0.1 : 0))
                )
        })
    }
}
