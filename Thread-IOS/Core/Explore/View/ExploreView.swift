import SwiftUI

struct ExploreView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(alignment: .leading){
                    ForEach(0 ... 10 ,id:\.self){ user in
                        VStack {
                            UserCell()
                            Divider()
                        }.padding(.vertical,2)
                    }
                }
            }.navigationTitle("Search")
                .searchable(text: $searchText, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
