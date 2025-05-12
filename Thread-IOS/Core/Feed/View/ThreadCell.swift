import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack{
            HStack(alignment: .top,spacing: 12){
               
                CircularProfileImageView()
                
                VStack(alignment: .leading, spacing: 4){
                    HStack{
                        Text("udara_damitha").font(.footnote)
                            .fontWeight(.semibold)
                        Spacer()
                        
                        Text("10m").font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "ellipsis")
                        }.foregroundColor(Color(.darkGray))
                        
                    }
                    
                    Text("new lesson has uploaded").font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing:16){
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "heart")
                        }.foregroundColor(Color(.darkGray))
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "bubble.right")
                        }.foregroundColor(Color(.darkGray))
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "arrow.rectanglepath")
                        }.foregroundColor(Color(.darkGray))
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "paperplane")
                        }.foregroundColor(Color(.darkGray))
                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                }
            }
            Divider()
        }.padding()
    }
}

#Preview {
    ThreadCell()
}
