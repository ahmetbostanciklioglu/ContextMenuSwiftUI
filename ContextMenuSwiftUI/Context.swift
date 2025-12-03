import Foundation

enum Context: CaseIterable, Hashable {
    case save, send
    var imageName: String {
        "img"
    }
    var height: CGFloat {
        300
    }
    var radius: CGFloat {
        15
    }
    var printMessage: () {
        switch self {
        case .save: return print("save")
        case .send: return print("save")
        }
    }
    var title: String {
        switch self {
        case .save: return "Save to Gallery"
        case .send: return "Send"
        }
    }
    var icon: String {
        switch self {
        case .save: return "folder.fill"
        case .send: return "paperplane.fill"
        }
    }
}
