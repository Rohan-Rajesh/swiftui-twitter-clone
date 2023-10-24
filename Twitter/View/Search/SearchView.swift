//
//  SearchView.swift
//  Twitter
//
//  Created by Rohan Rajesh on 06/03/23.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    
    var body: some View {
        ScrollView {
            SearchBar(searchText: $searchText)
            
            VStack(alignment: .leading) {
                ForEach(0..<10, content: { _ in
                    HStack { Spacer() }
                    SearchUserCell()
                })
            }
            .padding(.leading, 25)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
