import SwiftUI

struct ProfileView: View {
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
                
                
                
            }
        }
    }
}

#Preview {
    ProfileView()
}
