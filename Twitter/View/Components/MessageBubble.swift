//
//  MessageBubble.swift
//  Twitter
//
//  Created by Rohan Rajesh on 08/03/23.
//

import SwiftUI

struct MessageBubbleClipShape: Shape {
    var isCurrentUser: Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, isCurrentUser ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 19, height: 19))
        
        return Path(path.cgPath)
    }
}


struct MessageBubble: View {
    var message: MockMessage
    
    var body: some View {
        HStack {
            if message.isCurrentUser {
                Spacer()
            }
            
            if !message.isCurrentUser {
                Image(message.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
                    .padding(.leading)
                    .padding(.top, 12)
            }

            
            Text(message.messageText)
                .font(.custom("SFProText-Regular", size: 16))
                .foregroundColor(message.isCurrentUser ? .white : .black)
                .padding(13)
                .background(message.isCurrentUser ? Color.accentColor : Color(hex: "#E7ECF0"))
                .clipShape(MessageBubbleClipShape(isCurrentUser: message.isCurrentUser))
                .padding(.horizontal, message.isCurrentUser ? 15 : 0)
            
            if !message.isCurrentUser {
                Spacer()
            }
        }
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: .init(id: 0, imageName: "batman", messageText: "Message Content", isCurrentUser: false))
    }
}
