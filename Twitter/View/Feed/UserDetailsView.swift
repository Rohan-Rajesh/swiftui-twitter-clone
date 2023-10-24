//
//  UserDetailsView.swift
//  Twitter
//
//  Created by Rohan Rajesh on 09/03/23.
//

import SwiftUI

struct UserDetailsHeader: View {
    var isCurrentUser: Bool
    
    var body: some View {
        VStack {
            ZStack {
                Color.accentColor
                    .frame(height: 150)
                
                VStack {
                    HStack {
                        Image("backButton")
                            .frame(width: 20, height: 20)
                            .scaledToFit()
                            .padding(.leading, 20)
                            .offset(y: 30)
                        Spacer()
                    }
                    
                    Image("batman")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 80, height: 80)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(.white, lineWidth: 3)
                        )
                        .offset(x: -140, y: 70)
                }
                
            }
            
            if (isCurrentUser) {
                HStack {
                    Spacer()
                    
                    Button(action: {  }, label: {
                        HStack {
                            Text("Edit Profile")
                                .font(.custom("SFProText-Medium", size: 14))
                                .foregroundColor(.black)
                                .padding(.horizontal, 15)
                                .padding(.vertical, 5)
                            
                        }
                        
                    })
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color(.systemGray3), lineWidth: 1)
                    )
                }
                .padding(.trailing)
                .padding(.top, 5)
            }
            else {
                HStack {
                    Spacer()
                    
                    Button(action: {  }, label: {
                        HStack {
                            Image("message")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .scaledToFit()
                                .foregroundColor(.black)
                                .padding(.horizontal, 15)
                                .padding(.vertical, 5)
                            
                        }
                        
                    })
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color(.systemGray3), lineWidth: 1)
                    )
                    Button(action: {  }, label: {
                        Text("Follow")
                            .font(.custom("SFProText-Medium", size: 13.5))
                            .foregroundColor(.white)
                            .padding(.horizontal, 25)
                            .padding(.vertical, 5)
                            .background(.black)
                            .cornerRadius(40)
                    })
                }
                .padding(.trailing)
                .padding(.top, 5)
            }
        }
        .ignoresSafeArea()
    }
}

struct UserInfo: View {
    var body: some View {
        VStack(spacing: 3) {
            Text("Bruce Wayne")
                .font(.custom("SFProText-Bold", size: 22))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("@batman")
                .font(.custom("SFProText-Regular", size: 16))
                .foregroundColor(Color(hex: "#687684"))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been ")
                .font(.custom("SFProText-Regular", size: 15))
                .frame(maxWidth: .infinity, alignment: .leading)
                .multilineTextAlignment(.leading)
                .padding(.top, 5)
            
            HStack(spacing: 15) {
                HStack(spacing: 7) {
                    Image("link")
                        .padding(.top, 3)
                    Text("[google.com](https://google.com)")
                        .font(.custom("SFProText-Regular", size: 14))
                }
                HStack(spacing: 7) {
                    Image("calendar")
                        .padding(.top, 2)
                    Text("Joined September 2018")
                        .font(.custom("SFProText-Regular", size: 14))
                        .foregroundColor(Color(hex: "#687684"))
                        .padding(.top, 1)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 10)
            
            HStack(spacing: 3) {
                Text("560")
                    .font(.custom("SFProText-Semibold", size: 14))
                Text("Followers")
                    .font(.custom("SFProText-Normal", size: 14))
                    .foregroundColor(Color(hex: "#687684"))
                
                Text("120")
                    .font(.custom("SFProText-Semibold", size: 14))
                    .padding(.leading, 5)
                Text("Following")
                    .font(.custom("SFProText-Normal", size: 14))
                    .foregroundColor(Color(hex: "#687684"))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 10)
        }
        .padding(.leading)
        .padding(.top)
    }
}

struct UserDetailsView: View {
    @State var isCurrentUser: Bool
    @State var selectedFilter: FilterOptions = .tweets
    
    var body: some View {
        ScrollView {
            UserDetailsHeader(isCurrentUser: isCurrentUser)
            UserInfo()
            UserFilterTabNavigator(selectedFilter: $selectedFilter)
                .padding(.top, 25)
            
            ForEach(0..<9) { item in
                TweetCell()
            }
        }
        .ignoresSafeArea()
    }
}

struct UserDetailsHeader_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailsHeader(isCurrentUser: false)
    }
}

struct UserInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserInfo()
    }
}

struct UserDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailsView(isCurrentUser: false)
    }
}


