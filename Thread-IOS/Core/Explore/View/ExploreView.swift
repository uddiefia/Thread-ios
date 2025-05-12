import SwiftUI

struct ExploreView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(alignment: .leading){
                    
                    ForEach(0 ... 10 ,id:\.self){ user in
                        
                        VStack {
                            HStack{
                                
                                CircularProfileImageView()
                                
                                VStack(alignment: .leading, spacing: 4){
                                    Text("udara_damitha")
                                        .fontWeight(.semibold)
                                    
                                    Text("UdaraPriya")
                                    
                                }.font(.footnote)
                                
                                Spacer()
                                
                                Text("Follow").font(.subheadline)
                                    .fontWeight(.semibold)
                                    .frame(width: 100, height:32)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color(.systemGray4), lineWidth: 1)
                                    }
                                
                            }.padding(.horizontal)
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
