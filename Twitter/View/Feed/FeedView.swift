//
//  FeedView.swift
//  Twitter
//
//  Created by Rohan Rajesh on 05/03/23.
//

import SwiftUI

struct FeedView: View {
    @State var createTweetState: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing, content: {
            ScrollView {
                ForEach(0..<20, content: { _ in
                    TweetCell()
                })
            }
            
            Button(action: { createTweetState.toggle() }, label: {
                ZStack {
                    Image(systemName: "plus")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 28, height: 28)
                        .padding()
                        .fullScreenCover(isPresented: $createTweetState, content: {
                            CreateTweetView(createTweetState: $createTweetState, tweetContent: "")
                        })
                }
            })
            .background(Color.accentColor)
            .foregroundColor(Color.white)
            .clipShape(Circle())
            .padding(.trailing, 20)
            .padding(.bottom, 20)
        })
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView(createTweetState: false)
    }
}
