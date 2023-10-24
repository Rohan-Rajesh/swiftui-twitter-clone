//
//  RegisterView.swift
//  Twitter
//
//  Created by Rohan Rajesh on 12/03/23.
//

import SwiftUI

struct RegisterView: View {
    @Binding var name: String
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
                
                Text("Create your account")
                    .font(.custom("SFProText-Heavy", size: 23))
                    .foregroundColor(.black)
                    .padding()
                
                AuthenticationTextField(text: $name, textColor: .accentColor, placeholder: "Name")
                AuthenticationTextField(text: $email, textColor: .accentColor, placeholder: "Phone number or email address")
                AuthenticationTextField(text: $password, textColor: .accentColor, placeholder: "Date of birth")
                
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(name: .constant(""), email: .constant(""), password: .constant(""))
    }
}
