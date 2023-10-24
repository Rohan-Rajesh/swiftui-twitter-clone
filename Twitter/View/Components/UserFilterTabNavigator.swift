//
//  UserFilterTabNavigator.swift
//  Twitter
//
//  Created by Rohan Rajesh on 11/03/23.
//

import SwiftUI

enum FilterOptions: Int, CaseIterable {
    case tweets
    case replies
    case media
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .media: return "Media"
        case .likes: return "Likes"
        }
    }
}

struct UserFilterTabNavigator: View {
    @Binding var selectedFilter: FilterOptions
    private let underlineWidth = UIScreen.main.bounds.width / CGFloat(FilterOptions.allCases.count) - 50
    private var padding: CGFloat {
        let rawValue = CGFloat(selectedFilter.rawValue)
        let count = CGFloat(FilterOptions.allCases.count)
        
        return ((UIScreen.main.bounds.width / count) * rawValue) + 27
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ForEach(FilterOptions.allCases, id: \.self) { filterOption in
                    Button(action: { self.selectedFilter = filterOption }, label: {
                        Spacer()
                        Text(filterOption.title)
                            .font(.custom("SFProText-Bold", size: 16))
                            .foregroundColor(selectedFilter == filterOption ? .accentColor : Color(.systemGray))
                        Spacer()
                    })
                }
            }
            
            VStack (alignment: .leading, spacing: 0) {
                Rectangle()
                    .frame(width: underlineWidth, height: 4)
                    .foregroundColor(Color.accentColor)
                    .cornerRadius(2)
                    .padding(.top, 5)
                    .padding(.leading, padding)
                    .padding(.top, -7)
                
                Rectangle()
                    .frame(height: 0.18, alignment: .center)
                    .foregroundColor(Color.gray)
                
            }
            .animation(.spring(blendDuration: 1), value: UUID())
            .padding(0)
        }
    }
}

struct UserFilterTabNavigator_Previews: PreviewProvider {
    static var previews: some View {
        UserFilterTabNavigator(selectedFilter: .constant(.tweets))
    }
}
