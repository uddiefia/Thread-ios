import SwiftUI

struct CreateThreadView: View {
    
    @State private var caption: String = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack(alignment: .top){
                    CircularProfileImageView()
                    VStack(alignment:.leading, spacing: 4){
                        Text("udara_damitha")
                            .fontWeight(.semibold)
                        
                        TextField("Start a thread", text: $caption, axis: .vertical )
                        
                    }.font(.footnote)
                    Spacer()
                    Button{
                        
                    }label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 12, height: 12)
                            .foregroundColor(.gray)
                    }
                }
                
                Spacer()
                
            }.padding()
                .navigationTitle("New Thread")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Cancel"){
                            
                        }.font(.subheadline)
                            .foregroundColor(.black)
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Post"){
                            
                        }.font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                    }
                }
        }
    }
}

#Preview {
    CreateThreadView()
}
