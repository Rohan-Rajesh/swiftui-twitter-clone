//
//  MessageInput.swift
//  Twitter
//
//  Created by Rohan Rajesh on 08/03/23.
//

import SwiftUI

struct MessageInput: View {
    @Binding var messageText: String
    
    var body: some View {
        HStack() {
            Image("attachImageMessage")
                .resizable()
                .scaledToFit()
                .frame(width: 15, height: 15)
                .padding(.vertical, 10)
                .padding(.leading, 15)
            
            TextField("Start a message", text: $messageText)
                .font(.custom("SFProText-Regular", size: 13.5))
                .padding(.leading, 5)
                .frame(maxWidth: .infinity)
            
            if (messageText.count > 0) {
                Button(action: {  }, label: {
                    Image("sendMessage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                        .padding(5)
                        .padding(.leading, 1)
                })
                .background(Color.accentColor)
                .foregroundColor(Color.white)
                .clipShape(Circle())
                .padding(.trailing, 4)
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color(hex: "#E7ECF0"))
        .cornerRadius(20)
        .padding()
    }
}

struct MessageInput_Previews: PreviewProvider {
    static var previews: some View {
        MessageInput(messageText: .constant(""))
    }
}
