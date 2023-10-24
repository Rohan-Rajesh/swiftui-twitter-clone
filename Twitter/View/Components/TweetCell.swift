//
//  TweetCell.swift
//  Twitter
//
//  Created by Rohan Rajesh on 05/03/23.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack {
            HStack (alignment: .top) {
                // Profile Photo
                Image("spiderman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .clipShape(Circle())
                    .padding(.trailing, 5)
                
                VStack (alignment: .leading) {
                    // Name, Username and Time
                    HStack {
                        Text("Spiderman")
                            .font(.custom("SFProText-Semibold", size: 16))
                            .padding(.bottom, 0.5)
                        
                        Text("@peterparker •")
                            .font(.custom("SFProText-Regular", size: 16))
                            .foregroundColor(Color.gray)
                            .padding(.bottom, 0.5)
                        
                        Text("1w")
                            .font(.custom("SFProText-Regular", size: 15))
                            .foregroundColor(Color.gray)
                            .padding(.bottom, 0.5)
                    }
                    
                    Text("It's not who I am underneath, but what I do that defines me")
                        .font(.custom("SFProText-Regular", size: 16))
                    
                    HStack {
                        Button(action: {}, label: {
                            Image("comment")
                                .resizable()
                                .frame(width: 15, height: 15)
                            Text("17")
                                .font(.custom("SFProText-Regular", size: 13))
                        })
                        .foregroundColor(Color.gray)
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image("retweet")
                                .resizable()
                                .frame(width: 13, height: 13)
                            Text("10")
                                .font(.custom("SFProText-Regular", size: 13))
                        })
                        .foregroundColor(Color.gray)
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image("heart")
                                .resizable()
                                .frame(width: 13, height: 13)
                            Text("363")
                                .font(.custom("SFProText-Regular", size: 13))
                        })
                        .foregroundColor(Color.gray)
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image("share")
                                .resizable()
                                .frame(width: 13, height: 13)
                        })
                        .foregroundColor(Color.gray)
                        Spacer()
                    }
                    .padding(.top, 5)
                }
            }
            .padding()
            
            Divider()
        }
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}
