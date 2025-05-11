import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack{
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

                }
                
                
                NavigationLink{
                    Text("Forgot password")
                }label:{
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    
                }
                
                Button{
                    
                }label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352 ,  height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                
                Spacer()
                Divider()
                
                NavigationLink{
                    Text("Registration view")
                }label:{
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                        
                    }.foregroundColor(.black)
                        .font(.footnote)
                    
                    
                }.padding(.vertical, 16)
            }
            
        }
    }
}

#Preview {
    LoginView()
}
