//
//  MainAuthenticationView.swift
//  Twitter
//
//  Created by Rohan Rajesh on 12/03/23.
//

import SwiftUI

struct MainAuthenticationView: View {
    @State var showLoginView: Bool
    @State var email: String
    @State var password: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                
                Image("logoBlue")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .padding(.top)
                
                Spacer()
            }
            
            Spacer()
            
            Text("See what's happening\nin the world right now")
                .font(.custom("SFProText-Heavy", size: 28))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            Button(action: {  }, label: {
                HStack {
                    Image("appleLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 23, height: 23)
                        .padding(.trailing, 3)
                    Text("Continue with Apple")
                        .font(.custom("SFProText-Semibold", size: 16.5))
                        .foregroundColor(.black)
                        .padding(.vertical, 18)
                }
            })
            .frame(maxWidth: .infinity)
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color(.gray), lineWidth: 1)
            )
            .cornerRadius(40)
            .padding(.bottom)
            
            Button(action: {  }, label: {
                HStack {
                    Image("googleLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 23, height: 23)
                        .padding(.trailing, 3)
                    Text("Continue with Google")
                        .font(.custom("SFProText-Semibold", size: 16.5))
                        .foregroundColor(.black)
                        .padding(.vertical, 18)
                }
            })
            .frame(maxWidth: .infinity)
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color(.gray), lineWidth: 1)
            )
            .cornerRadius(40)
            .padding(.bottom)
            
            HStack {
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                Text("or")
                    .foregroundColor(Color(hex: "#607181"))
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            .padding(.bottom, 10)
            
            Button(action: {  }, label: {
                Text("Follow")
                    .font(.custom("SFProText-Semibold", size: 16.5))
                    .foregroundColor(.white)
                    .padding(.vertical, 18)
            })
            .frame(maxWidth: .infinity)
            .background(.black)
            .cornerRadius(40)
            .padding(.bottom)
            
            Text("By signing up, you agree to our Terms, Privacy Policy\nand Cookie Use")
                .font(.custom("SFProText-Regular", size: 13))
                .foregroundColor(Color(hex: "#88939B"))
                .padding(.bottom, 30)
            
            HStack(spacing: 0) {
                Text("Have an account already? ")
                
                Button(action: {self.showLoginView.toggle()}, label: {
                    Text("Log In")
                        .foregroundColor(.accentColor)
                })
                .fullScreenCover(isPresented: $showLoginView, content: {
                    LoginEmailView(email: $email, password: $password)
                })
            }
            .font(.custom("SFProText-Regular", size: 16))
            .foregroundColor(Color(hex: "#607181"))
        }
        .padding(.horizontal, 25)
        .navigationBarHidden(true)
    }
}

struct MainAuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        MainAuthenticationView(showLoginView: false, email: "", password: "")
    }
}
