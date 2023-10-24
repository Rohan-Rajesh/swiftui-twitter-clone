//
//  AuthenticationPasswordField.swift
//  Twitter
//
//  Created by Rohan Rajesh on 12/03/23.
//

import SwiftUI

struct AuthenticationPasswordField: View {
    @Binding var text: String
    let textColor: Color
    let placeholder: String
    
    @FocusState private var isFocused: Bool
    @State var showPassword: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .leading) {
                if (showPassword) {
                    TextField("", text: $text)
                        .focused($isFocused)
                        .font(.custom("SFProText-Regular", size: 16))
                        .foregroundColor(textColor)
                        .padding(.top)
                        .textInputAutocapitalization(.never)
                }
                else {
                    SecureField("", text: $text)
                        .focused($isFocused)
                        .font(.custom("SFProText-Regular", size: 16))
                        .foregroundColor(textColor)
                        .padding(.top)
                        .textInputAutocapitalization(.never)
                }
                
                HStack {
                    if (text.isEmpty) {
                        Text(placeholder)
                            .font(.custom("SFProText-Regular", size: 16))
                            .foregroundColor(Color(hex: "#526573"))
                            .padding(.top)
                            .onTapGesture {
                                self.isFocused.toggle()
                            }
                    }
                    else {
                        Text(placeholder)
                            .font(.custom("SFProText-Regular", size: 12))
                            .foregroundColor(Color(hex: "#526573"))
                            .padding(.bottom, 30)
                    }
                    
                    Spacer()
                    
                    Button(action: { self.showPassword.toggle() }, label: {
                        Image(systemName: showPassword ? "eye" : "eye.slash")
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.gray)
                            .frame(width: 30, height: 30)
                            .padding(.bottom, -10)
                    })
                }
            }
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color(hex: "#C8D2DA"))
        }
        .padding(.horizontal)
        .padding(.vertical, 7)
    }
}

struct AuthenticationPasswordField_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationPasswordField(text: .constant("password"), textColor: .black, placeholder: "Password", showPassword: false)
    }
}
