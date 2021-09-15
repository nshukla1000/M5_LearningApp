//
//  HomeViewRow.swift
//  LearningApp
//
//  Created by Tarjani Shukla on 9/14/21.
//

import SwiftUI

struct HomeViewRow: View {
    var image: String
    var title: String
    var description: String
    var count : String
    var time: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
            HStack {
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116)
                    .clipShape(Circle())
                Spacer()
                VStack(alignment: .leading, spacing: 10.0) {
                    Text(title)
                        .fontWeight(.bold)
                    Text(description)
                        .font(.caption)
                        .padding(.bottom, 20.0)
                    HStack {
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(count)
                            .font(.caption)
                        Spacer()
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(time)
                            .font(.caption)
                    }
               
                }
            }
            .padding(.horizontal, 20.0)
        }
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(image: "swift", title: "Learn Swift", description: "some description" , count: "10 Lessons", time: "90 Hours")
    }
}
