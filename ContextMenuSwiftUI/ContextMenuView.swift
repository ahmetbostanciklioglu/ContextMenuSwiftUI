import SwiftUI

struct ContextMenuView: View {
    fileprivate var context: Context = .save
    
    var body: some View {
        Image(context.imageName)
            .resizable()
            .customImageModifers(context: context)
            .contextMenu(menuItems: contextMenuContent)
    }
    
    /// Context Menu Content
    @ViewBuilder
    fileprivate func contextMenuContent() -> some View {
        VStack {
            ForEach(Context.allCases, id: \.self) { index in
                Button {
                    index.printMessage
                } label: {
                    Label(index.title, systemImage: index.icon)
                }
            }
        }
    }
}

#Preview {
    ContextMenuView()
}
