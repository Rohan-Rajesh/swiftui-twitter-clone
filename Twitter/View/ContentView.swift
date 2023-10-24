//
//  ContentView.swift
//  Twitter
//
//  Created by Rohan Rajesh on 04/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TabView {
                FeedView(createTweetState: false)
                    .tabItem({
                        Image("home")
                            .renderingMode(.template)
                    })
                
                MainAuthenticationView(showLoginView: false, email: "", password: "")
                    .tabItem({
                        Image("search")
                            .renderingMode(.template)
                    })
                
                MessagesView()
                    .tabItem({
                        Image("messages")
                            .renderingMode(.template)
                    })
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
