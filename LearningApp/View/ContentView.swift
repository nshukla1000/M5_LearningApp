//
//  ContentView.swift
//  LearningApp
//
//  Created by Tarjani Shukla on 9/16/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model : ContentModel
    
    var body: some View {
        
        
        ScrollView {
            
            if model.currentModule != nil {
                LazyVStack {
                    ForEach(0..<model.currentModule!.content.lessons.count){ index in
                        // Lesson Card
                        let lesson = model.currentModule!.content.lessons[index]
                        ContentViewRow(index: index + 1, title: lesson.title, duration: lesson.duration)
                    }
                    
                }
                .padding(5)
                .navigationTitle("Learn \(model.currentModule?.category ?? "" )")
            }
            
        }
    }
}


