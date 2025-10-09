//
//  iOS26NotificationViewScrollable.swift
//  union-notifications
//
//  Created by Rafi Kigner on 10/9/25.
//


// iOS26NotificationViewScrollable.swift
// Pure scrolling implementation no offsets, no ZStack, no if statements

import SwiftUI
import UIKit

@available(iOS 26, *)
struct iOS26NotificationViewScrollable: View {
    let sizes: any NotificationSizes
    let appName: String
    let onAllow: () -> Void
    let onDontAllow: (() -> Void)?
    
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize
    
    
    var body: some View {
        var textH = (sizes.dialogHeight - sizes.buttonDialogHeight)
        VStack(spacing: 0) {
            
        
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 0) {
                    Spacer()
                        .frame(height:sizes.titleDistanceFromBottom )
                    
                    // Title
                    Text(localizedTitle)
                        .font(sizes.titleFont)
                        .foregroundColor(.primary)
                        .lineSpacing(sizes.titleLeading)
                        .padding(.horizontal, sizes.horizontalTextPadding)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    // Space between title and body
                    Spacer()
                        .frame(height: sizes.bodyTextDistanceFromBottom) // Adjust as needed
                    
                    // Body text
                    Text("Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.")
                        .font(sizes.bodyFont)
                        .foregroundColor(.secondary)
                        .lineSpacing(sizes.bodyLeading)
                        .padding(.horizontal, sizes.horizontalTextPadding)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                  
                    Spacer()
                        .frame(height: sizes.buttonDistanceFromBottom)
                }
            }
            .frame(width: sizes.dialogWidth, height: textH ) //chekc this
            .clipped()
            
            
     
            if dynamicTypeSize <= .accessibility1 {
                Rectangle()
                    .fill(Color.clear)
                    .frame(height: 0)
            } else {
                Divider()
            }
           
          
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 8) {
                    disabledButton
                    enabledButton

                }
                .padding(.top, 15)
                .padding(.bottom, 15)
                .frame(width: sizes.dialogWidth)
            }
            .frame(width: sizes.dialogWidth, height: sizes.buttonDialogHeight)
            .compositingGroup()  // Force render as single layer
            .clipped()
            .onAppear {
                UIScrollView.appearance().bounces = false
            }
            
        }
        .frame(width: sizes.dialogWidth, height: textH)
      
    }
    
    private var disabledButton: some View {
        Button {
            onDontAllow?()
        } label: {
            Text("Don't Allow")
                .font(sizes.buttonFont)
                .foregroundStyle(.primary.opacity(0.6))
                .frame(width: sizes.buttonWidth, height: sizes.buttonHeight)
                .background(
                    RoundedRectangle(cornerRadius: sizes.cornerRadius)
                        .fill(.gray.opacity(0.11))  // Slightly darker
                )
            
        }
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: sizes.cornerRadius))
        .buttonStyle(.plain)
    }

    private var enabledButton: some View {
        Button {
            onAllow()
        } label: {
            Text("Allow")
                .font(sizes.buttonFont)
                .foregroundStyle(.primary)
                .frame(width: sizes.buttonWidth, height: sizes.buttonHeight)
                .background(
                    RoundedRectangle(cornerRadius: sizes.cornerRadius)
                        .fill(.gray.opacity(0.15))  // Slightly darker
                )
}
        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: sizes.cornerRadius))
        .buttonStyle(.plain)
    }
    private var localizedTitle: String {
        String(format: String(localized: "“%@“ Would Like to Send You Notifications", bundle: .module), "NotificationsPM")
            //appName
    }
}


#Preview {
    if #available(iOS 26, *) {
        iOS26NotificationView(
            appName: "TestApp",
            onAllow: {
                print("Allow button tapped")
            },
            onDontAllow: {
                print("Don't Allow button tapped")
            }
        )
    }
}

