//
//  CreateTweetView.swift
//  Twitter
//
//  Created by Rohan Rajesh on 11/03/23.
//

import SwiftUI

struct AttachImageIcon: View {
    var body: some View {
        Image("addCameraImageTweet")
            .padding(25)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.gray, lineWidth: 1)
            )
    }
}

struct CreateTweetView: View {
    @Binding var createTweetState: Bool
    @State var tweetContent: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button(action: { self.createTweetState.toggle() }, label: {
                    Text("Cancel")
                        .font(.custom("SFProText-Regular", size: 17))
                        .foregroundColor(Color.accentColor)
                })
                .padding(.leading)
                
                Spacer()
                
                Button(action: {}, label: {
                    Text("Tweet")
                        .font(.custom("SFProText-Regular", size: 16))
                        .foregroundColor(.white)
                        .padding()
                })
                .frame(height: 30)
                .background(Color.accentColor)
                .clipShape(Capsule())
                .padding(.trailing)
            }
            
            HStack(alignment: .top) {
                Image("venom")
                    .resizable()
                    .frame(width: 45, height: 45)
                    .scaledToFill()
                    .clipShape(Circle())
                    .padding(.top, 10)
                
                TextArea(text: $tweetContent, placeholder: "What's Happening?")
            }
            .padding()
            
            Spacer()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    AttachImageIcon()
                        .frame(width: 100, height: 100)
                    
//                    AsyncImage(url: URL(string: "https://img.freepik.com/free-photo/online-school-equipment-home_23-2149041148.jpg")) { image in
//                        image.resizable()
//                    } placeholder: {
//                        ProgressView()
//                    }
//                    .frame(width: 80, height: 75)
//                    .cornerRadius(10)
//
//                    AsyncImage(url: URL(string: "https://images.pexels.com/photos/7238759/pexels-photo-7238759.jpeg")) { image in
//                        image.resizable()
//                    } placeholder: {
//                        ProgressView()
//                    }
//                    .frame(width: 80, height: 75)
//                    .cornerRadius(10)
//
//                    AsyncImage(url: URL(string: "https://images.pexels.com/photos/633409/pexels-photo-633409.jpeg")) { image in
//                        image.resizable()
//                    } placeholder: {
//                        ProgressView()
//                    }
//                    .frame(width: 80, height: 75)
//                    .cornerRadius(10)
//
//                    AsyncImage(url: URL(string: "https://images.pexels.com/photos/840185/pexels-photo-840185.jpeg")) { image in
//                        image.resizable()
//                    } placeholder: {
//                        ProgressView()
//                    }
//                    .frame(width: 80, height: 75)
//                    .cornerRadius(10)
                }
                
            }
            .padding(.horizontal, 5)
            
            Divider()
            HStack {
                Image("addImageTweet")
                    .padding(.leading)
                
                Image("addGifTweet")
                    .padding(.leading)
                
                Image("addPollTweet")
                    .padding(.leading)
                
                Image("addLocationTweet")
                    .padding(.leading)
                
                Spacer()
                
                ZStack {
                    Circle()
                        .stroke(lineWidth: 2)
                        .frame(width: 15, height: 15)
                        .foregroundColor(.gray)
                    
                    Circle()
                        .trim(from: 0, to: 0.5)
                        .stroke(lineWidth: 2)
                        .frame(width: 15, height: 15)
                        .foregroundColor(Color.accentColor)
                }
                .padding(.trailing, 10)
                
                Divider()
                    .frame(height: 25)
                    .padding(.trailing, 10)
                
                Image("addTweet")
                    .resizable()
                    .frame(width: 22, height: 22)
                    .padding(.trailing, 20)
            }
        }
        .frame(maxWidth: .infinity, alignment: .top)
    }
}

struct CreateTweetView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTweetView(createTweetState: .constant(false), tweetContent: "")
    }
}
