//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Tarjani Shukla on 9/13/21.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
