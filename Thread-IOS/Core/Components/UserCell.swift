import SwiftUI

struct UserCell: View {
    var body: some View {
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
            
        }.padding(.horizontal)    }
}

#Preview {
    UserCell()
}
