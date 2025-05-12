import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("ud").resizable().scaledToFit().frame(width: 50, height: 50)
            .clipShape(Circle())    }
}

#Preview {
    CircularProfileImageView()
}
