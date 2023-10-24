//
//  TextArea.swift
//  Twitter
//
//  Created by Rohan Rajesh on 12/03/23.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    @FocusState private var isFocused: Bool
    
    var placeholder: String
    
    var body: some View {
        VStack {
            TextEditor(text: $text)
                .font(.custom("SFProText-Regular", size: 17))
                .foregroundColor(.black)
                .overlay(alignment: .topLeading,content: {
                    if (text.isEmpty) {
                        Text(placeholder)
                            .font(.custom("SFProText-Regular", size: 17))
                            .foregroundColor(.gray)
                            .padding(.top, 8)
                            .padding(.leading, 5)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                            .onTapGesture {
                                self.isFocused.toggle()
                            }
                    }
                    
                })
                .multilineTextAlignment(.leading)
                .focused($isFocused)
            
            Spacer()
        }
    }
}

struct TextArea_Previews: PreviewProvider {
    static var previews: some View {
        TextArea(text: .constant(""), placeholder: "What's Happening?")
    }
}
