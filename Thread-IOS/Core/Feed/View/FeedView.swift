import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                LazyVStack{
                    ForEach(0 ... 10 ,id:\.self){ thread in
                        ThreadCell()
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
