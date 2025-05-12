import SwiftUI

struct EditProfileView: View {
    @State private var bio: String = ""
    @State private var link: String = ""
    @State private var isPrivateProfile: Bool = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                
                
                VStack{
                    //   name & profile image
                    HStack{
                        VStack(alignment: .leading){
                            Text("Name")
                                .fontWeight(.semibold)
                            
                            Text("Udara Damitha")
                            
                        }.font(.footnote)
                        Spacer()
                        CircularProfileImageView()
                        
                    }
                    Divider()
                    
                    // Bio
                    VStack(alignment: .leading){
                        Text("Bio")
                            .fontWeight(.semibold)
                        
                        TextField("Enter your bio", text: $bio, axis: .vertical )
                        
                    }
                    Divider()
                    
                    //  Link
                    VStack(alignment: .leading){
                        Text("Link")
                            .fontWeight(.semibold)
                        
                        TextField("Enter your bio", text: $link, axis: .vertical )
                        
                    }
                    Divider()
                    
                    //Private
                    Toggle("Private profile", isOn: $isPrivateProfile)
                    Divider()
                }.font(.footnote).padding()
                    .background(.white)
                    .cornerRadius(10)
                    .overlay(content: {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.systemGray4), lineWidth: 1 )
                    })
                    .padding()
                
                
            }.navigationTitle("Edit Profile")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Cancel"){
                            
                        }.font(.subheadline)
                            .foregroundColor(.black)
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Done"){
                            
                        }.font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                    }
                }
        }
    }
}

#Preview {
    EditProfileView()
}
