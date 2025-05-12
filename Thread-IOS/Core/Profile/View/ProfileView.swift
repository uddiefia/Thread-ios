import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView{
//           bio and stats
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
        }
    }
}

#Preview {
    ProfileView()
}
