import SwiftUI

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var fullname: String = ""
    @State private var username: String = ""
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image("threads-app-icon").resizable().scaledToFit()
                .frame(width: 240 ,height: 180)
                .padding()
            
            VStack{
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("Enter your full name", text: $fullname)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("Enter your username", text: $username)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
            }
            
            Button{
                
            }label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352 ,  height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }.padding(.vertical)
            
            Spacer()
            Divider()
            
            Button{
                
            }label: {
                HStack(spacing: 3){
                    Text("Already have an account?")
                    
                    Text("Sign In")
                        .fontWeight(.semibold)
                    
                }.foregroundColor(.black)
                    .font(.footnote)
            }.padding(.vertical, 16)
        }
    }
}

#Preview {
    RegistrationView()
}
