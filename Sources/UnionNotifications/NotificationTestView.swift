import SwiftUI

public struct NotificationTestView: View {
    @State private var showingDialog = false
    
    public init() {}
    
    public var body: some View {
        ZStack {
            VStack(spacing: 24) {
                Text("Notification Permission Dialog Test", bundle: .module)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Button(action: {
                    showingDialog = true
                }) {
                    Text("Show Notification Dialog", bundle: .module)
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
            }
            .padding()
            
            if showingDialog {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        showingDialog = false
                    }
                
                NotificationsView {
                    print("User allowed notifications")
                    showingDialog = false
                } onDeny: {
                    print("User denied notifications")
                    showingDialog = false
                }
                .transition(.opacity.combined(with: .scale(scale: 0.8)))
                .animation(.easeInOut(duration: 0.2), value: showingDialog)
            }
        }
    }
}

#Preview {
    NotificationTestView()
}
