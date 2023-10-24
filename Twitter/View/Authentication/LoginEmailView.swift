//
//  LoginEmailView.swift
//  Twitter
//
//  Created by Rohan Rajesh on 12/03/23.
//

import SwiftUI

struct LoginEmailView: View {
    @Binding var email: String
    @Binding var password: String
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Button(action: {}, label: {
                        Text("Cancel")
                            .font(.custom("SFProText-Medium", size: 18))
                            .foregroundColor(.black)
                            .padding(.leading)
                            .padding(.top, 18)
                            .offset(x: 0)
                    })
                    Spacer()
                    
                    Image("logoBlue")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                        .padding(.top)
                        .offset(x: -40)
                    
                    Spacer()
                }
                
                Text("To get started, first enter\nyour phone, email or\n@username")
                    .font(.custom("SFProText-Heavy", size: 23))
                    .foregroundColor(.black)
                    .padding()
                
                AuthenticationTextField(text: $email, textColor: .accentColor, placeholder: "Phone, email or username")
                
                Spacer()
                
                HStack {
                    Text("Forgot Password?")
                        .font(.custom("SFProText-Regular", size: 18))
                    
                    Spacer()
                    
                    NavigationLink(destination: LoginPasswordView(email: $email, password: $password), label: {
                        Text("Next")
                            .font(.custom("SFProText-Medium", size: 13.5))
                            .foregroundColor(.white)
                            .padding(.horizontal, 30)
                            .padding(.vertical, 8)
                            .background(.black)
                            .cornerRadius(40)
                    })
                }
                .padding(.horizontal)
            }
        }
        .frame(maxWidth: .infinity)
        .navigationBarHidden(true)
    }
}

struct LoginEmailView_Previews: PreviewProvider {
    static var previews: some View {
        LoginEmailView(email: .constant(""), password: .constant(""))
    }
}
