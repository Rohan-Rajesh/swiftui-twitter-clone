//
//  LoginPasswordView.swift
//  Twitter
//
//  Created by Rohan Rajesh on 12/03/23.
//

import SwiftUI

struct LoginPasswordView: View {
    @Binding var email: String
    @Binding var password: String
    
    var body: some View {
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
            
            Text("Enter your password")
                .font(.custom("SFProText-Heavy", size: 23))
                .foregroundColor(.black)
                .padding()
            
            AuthenticationTextField(text: $email, textColor: .black, placeholder: "")
            AuthenticationPasswordField(text: $password, textColor: .black, placeholder: "Password", showPassword: false)
            
            Spacer()
            
            HStack {
                Text("Forgot Password?")
                    .font(.custom("SFProText-Regular", size: 18))
                
                Spacer()
                
                Button(action: {  }, label: {
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
        .frame(maxWidth: .infinity)
        .navigationBarHidden(true)
    }
}

struct LoginPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPasswordView(email: .constant("rohan.rajeshd@gmail.com"), password: .constant("password"))
    }
}
