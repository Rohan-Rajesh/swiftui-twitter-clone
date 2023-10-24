//
//  NewMessageView.swift
//  Twitter
//
//  Created by Rohan Rajesh on 07/03/23.
//

import SwiftUI

struct NewMessageView: View {
    @Binding var isPresented: Bool
    @Binding var showConversationView: Bool
    @State var searchText = ""
    
    var body: some View {
        ScrollView {
            // Heading
            HStack {
                Button(action: { self.isPresented = false }, label: {
                    Text("Cancel")
                        .font(.custom("SFProText-Regular", size: 16))
                        .position(x: 40, y: 10)
                        .foregroundColor(.black)
                })
                
                Text("New Message")
                    .font(.custom("SFProText-Bold", size: 17))
                    .position(x: 0, y: 10)
            }
            .padding(.top)
            .padding(.bottom, 5)
            Divider()
            // Search Field
            HStack {
                Text("To: ")
                    .font(.custom("SFProText-Regular", size: 16))
                TextField("", text: $searchText)
                    .padding(.vertical, 5)
                    .font(.custom("SFProText-Regular", size: 15))
                    .foregroundColor(Color(hex: "#4b545c"))
                
                Spacer()
            }
            .padding(.horizontal)
            .padding(.vertical, 1)
            Divider()
            
            VStack(alignment: .leading) {
                ForEach(0..<4, content: { _ in
                    HStack { Spacer() }
                    Button(action: {
                        self.isPresented.toggle()
                        self.showConversationView.toggle()
                    }, label: {
                        SearchUserCell()
                    })
                })
            }
            .padding(.leading, 25)
        }
        
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView(isPresented: .constant(true), showConversationView: .constant(false))
    }
}
