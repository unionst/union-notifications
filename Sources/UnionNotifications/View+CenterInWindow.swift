//
//  View+CenterInWindow.swift
//  union-notifications
//
//  Created by Ben Sage on 9/23/25.
//

import SwiftUI
import UIKit

extension View {
    func centerInWindow() -> some View {
        modifier(CenterInWindow())
    }
}

private struct CenterInWindow: ViewModifier {
    @State private var midY: CGFloat = 0

    private var offset: CGFloat {
        guard let window = UIWindow.current else { return 0 }
        let insets = window.safeAreaInsets
        let h = window.bounds.height
        let safeCenterY = insets.top + (h - insets.top - insets.bottom) / 2
        guard midY > 1 else { return 0 }
        return safeCenterY - midY
    }

    func body(content: Content) -> some View {
        content
            .offset(y: offset)
            .onGeometryChange(for: CGFloat.self) { proxy in
                proxy.frame(in: .global).midY
            } action: { value in
                midY = value
            }
    }
}

extension UIWindow {
    static var current: UIWindow? {
        UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap(\.windows)
            .first(where: \.isKeyWindow)
    }
}

extension UIScreen {
    static var current: UIScreen? {
        UIWindow.current?.screen
    }
}


