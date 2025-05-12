import Foundation

enum ProfileThreadSort:CaseIterable {
    case threads
    case replies
    
    var title: String{
        switch self{
        case.threads: return "Threads"
        case.replies: return "Replies"
        }
    }
}
