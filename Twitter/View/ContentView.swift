//
//  ContentView.swift
//  Twitter
//
//  Created by Rohan Rajesh on 04/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                Text("Home View")
                    .tabItem({
                        Image("home")
                            .renderingMode(.template)
                    })
                
                Text("Search View")
                    .tabItem({
                        Image("search")
                            .renderingMode(.template)
                    })

                Text("Messages View")
                    .tabItem({
                        Image("messages")
                            .renderingMode(.template)
                    })

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
