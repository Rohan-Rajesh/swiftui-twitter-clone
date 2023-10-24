//
//  SearchUserCell.swift
//  Twitter
//
//  Created by Rohan Rajesh on 06/03/23.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        NavigationLink(destination: UserDetailsView(isCurrentUser: true), label: {
            HStack {
                Image("batman")
                    .resizable()
                    .frame(width: 47, height: 47)
                    .scaledToFill()
                    .clipShape(Circle())
                
                VStack (alignment: .leading) {
                    Text("Bruce Wayne")
                        .font(.custom("SFProText-Semibold", size: 16.5))
                        .foregroundColor(.black)
                    
                    Text("@batman")
                        .font(.custom("SFProText-Regular", size: 14.5))
                        .foregroundColor(Color(hex: "#687684"))
                }
            }
        })
    }
}

struct SearchUserCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserCell()
    }
}
