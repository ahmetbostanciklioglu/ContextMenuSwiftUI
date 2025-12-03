import SwiftUI

/// Custom Image modifiers
extension View {
    func customImageModifers(context: Context) -> some View {
        self
            .aspectRatio(contentMode: .fill)
            .frame(height: context.height)
            .clipShape(RoundedRectangle(cornerRadius: context.radius))
            .padding()
    }
}
