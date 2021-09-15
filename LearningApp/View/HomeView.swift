//
//  ContentView.swift
//  LearningApp
//
//  Created by Tarjani Shukla on 9/13/21.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model : ContentModel
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                Text("What do you want to do today?")
                ScrollView{
                    LazyVStack {
                        ForEach(model.modules){ module in
                            // Learn Card
                            VStack(spacing: 20.0) {
                                HomeViewRow(image: module.content.image, title: "Learn \(module.category)", description: module.content.description, count: "\(module.content.lessons.count) Lessons", time: module.content.time)
                                HomeViewRow(image: module.test.image, title: " \(module.category) Test", description: module.test.description, count: "\(module.test.questions.count) Lessons", time: module.test.time)
                            }
                            
                            //Test Card

                        }
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
            }
            .padding(.leading, 20.0)
            .navigationTitle("Get Started")
        }
        


        

        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
