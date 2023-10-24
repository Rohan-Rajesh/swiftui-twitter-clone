//
//  MessagesView.swift
//  Twitter
//
//  Created by Rohan Rajesh on 07/03/23.
//

import SwiftUI

struct MessagesView: View {
    @State var showNewMessageSheet = false
    @State var showConversationView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing, content: {
            ScrollView {
                ForEach(0..<20, content: { _ in
                    MessageUserCell()
                        .navigationTitle("Message")
                        .navigationDestination(isPresented: $showConversationView) {
                            ConversationView()
                        }
                })
            }
            
            Button(action: { self.showNewMessageSheet.toggle() }, label: {
                ZStack {
                    Image("newMessage")
                        .frame(width: 28, height: 26)
                        .padding()
                }
            })
            .background(Color.accentColor)
            .foregroundColor(Color.white)
            .clipShape(Circle())
            .padding(.bottom, 20)
            .sheet(isPresented: $showNewMessageSheet, content: {
                NewMessageView(isPresented: $showNewMessageSheet, showConversationView: $showConversationView)
            })
        })
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
