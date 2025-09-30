//
//  NotificationDialogButton.swift
//  union-notifications
//
//  Created by RJ Kigner on 9/29/25.
//

import SwiftUI
import UnionButtons


struct NotificationDialogButton: View {
    let title: LocalizedStringKey
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title, bundle: .module)
                .font(.body.weight(.semibold))
                .foregroundStyle(.blue)
        }
        .contentShape(.rect)
        .buttonStyle(UnionButtonStyle(nil) { label, isPressed in
            label
                .frame(maxWidth: .infinity)
                .background(
                    Rectangle()
                        .fill(Color.primary.opacity(isPressed ? 0.1 : 0))
                )
        })
    }
}
