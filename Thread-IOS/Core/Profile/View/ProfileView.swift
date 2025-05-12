import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadSort = .threads
    @Namespace var animation
    
    var body: some View {
        ScrollView{
            //           bio and stats
            VStack(spacing: 20) {
                HStack(alignment:.top) {
                    VStack(alignment: .leading, spacing: 12) {
                        //                fullname & username
                        VStack(alignment: .leading, spacing: 4){
                            Text("Udarapriya Damitha")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("udara_damith")
                                .font(.subheadline)
                        }
                        
                        Text("full stack mobile developer")
                            .font(.footnote)
                        
                        Text("2 followers")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    CircularProfileImageView()
                }.padding(.horizontal)
                
                Button{
                    
                }label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height:  32)
                        .background(.black)
                        .cornerRadius(8)
                    
                    
                }
                //                user content list view
                
                VStack{
                    
                    HStack{
                        ForEach(ProfileThreadSort.allCases){ filter in
                            VStack{
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold: .regular)
                                
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 180, height: 1)
                                        .matchedGeometryEffect(id: "item", in: animation
                                        )
                                }else{
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 180, height: 1)
                                }
                            }.onTapGesture {
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                }
                
                
                
            }
        }
    }
}

#Preview {
    ProfileView()
}
