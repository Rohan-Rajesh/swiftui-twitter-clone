//
//  ConversationView.swift
//  Twitter
//
//  Created by Rohan Rajesh on 08/03/23.
//

import SwiftUI

struct ConversationView: View {
    @State var messageText = ""
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach (MOCK_MESSAGES) { message in
                    MessageBubble(message: message)
                }
            }
            
            MessageInput(messageText: $messageText)
        }
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}
