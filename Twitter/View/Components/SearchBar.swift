//
//  SearchBar.swift
//  Twitter
//
//  Created by Rohan Rajesh on 06/03/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            Image("magnifyingGlass")
                .resizable()
                .frame(width: 12, height: 12)
                .padding(.leading, 15)
            
            TextField("Search Twitter", text: $searchText)
                .padding(.vertical, 5)
                .font(.custom("SFProText-Regular", size: 15))
                .foregroundColor(Color(hex: "#4b545c"))
                .onTapGesture {
                    self.isEditing = true
                }
        }
        .background(Color(hex: "#E7ECF0"))
        .cornerRadius(17)
        .padding(.horizontal, 20)
    }
}


struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant(""))
    }
}
