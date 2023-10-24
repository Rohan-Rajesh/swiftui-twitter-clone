//
//  AuthenticationTextField.swift
//  Twitter
//
//  Created by Rohan Rajesh on 12/03/23.
//

import SwiftUI

struct AuthenticationTextField: View {
    @Binding var text: String
    let textColor: Color
    let placeholder: String
    
    @FocusState private var isFocused: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .leading) {
                TextField("", text: $text)
                    .focused($isFocused)
                    .font(.custom("SFProText-Regular", size: 16))
                    .foregroundColor(textColor)
                    .padding(.top)
                    .textInputAutocapitalization(.never)
                
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
            }
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color(hex: "#C8D2DA"))
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
    }
}

struct AuthenticationTextField_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationTextField(text: .constant(""), textColor: .accentColor, placeholder: "Phone, email or username")
    }
}
