//
//  ContentViewRow.swift
//  LearningApp
//
//  Created by Tarjani Shukla on 9/17/21.
//

import SwiftUI

struct ContentViewRow: View {
    var index: Int
    var title: String
    var duration: String
    
    var body: some View {
        NavigationLink(
            destination: ContentDetailView(),
            label: {
                ZStack (alignment: .leading) {
                    Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .frame( height: 66)
                    
                    HStack (spacing: 30) {
                        Text(String(index + 1))
                        VStack (alignment: .leading)
                    {
                            Text(title)
                                .bold()
                            Text(duration)
                        }
                    }
                    .padding()
            
                }
                .padding(.bottom, 5)
            })
    }
}

struct ContentViewRow_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewRow(index: 3, title: "Numbers", duration: "18 minutes")
    }
}
