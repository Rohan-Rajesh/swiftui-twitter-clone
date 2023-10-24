//
//  MessageUserCell.swift
//  Twitter
//
//  Created by Rohan Rajesh on 07/03/23.
//

import SwiftUI

struct MessageUserCell: View {
    var body: some View {
        HStack {
            Image("batman")
                .resizable()
                .frame(width: 55, height: 55)
                .scaledToFill()
                .clipShape(Circle())
            
            VStack (alignment: .leading, spacing: 3) {
                HStack(spacing: 0) {
                    Text("Bruce Wayne")
                        .font(.custom("SFProText-Semibold", size: 15.5))
                        .foregroundColor(.black)
                    
                    Text(" @batman")
                        .font(.custom("SFProText-Regular", size: 14))
                        .foregroundColor(Color(hex: "#687684"))
                    
                    Text(" • 21/11/21")
                        .font(.custom("SFProText-Regular", size: 14))
                        .foregroundColor(Color(hex: "#687684"))
                }
                
                Text("You: This is the last sent message from this user account")
                    .font(.custom("SFProText-Regular", size: 13.5))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color(hex: "#687684"))
                    .lineLimit(2)
            }
        }
        .padding(.vertical, 10)
    }
}

struct MessageUserCell_Previews: PreviewProvider {
    static var previews: some View {
        MessageUserCell()
    }
}
