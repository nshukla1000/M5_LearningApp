//
//  ContentModel.swift
//  LearningApp
//
//  Created by Tarjani Shukla on 9/13/21.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var modules = [Module]()
    var styleData: Data?
    
    @Published var currentModule: Module?
    var currentModuleIndex = 0
    
    init(){
        
        getLocalData()
        
    }
    //MARK: - Data Methods
    func getLocalData(){
        //get URL to json file
        let jsonURL = Bundle.main.url(forResource: "data", withExtension: "json")
        
        //Read the file into data object
        
        do {
            let jsonData = try Data(contentsOf: jsonURL!)
            let jsonDecoder = JSONDecoder()
            // Try to decode the json object
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            // assign parsed modules to modules property
            self.modules = modules
        }
        catch{
            //log error
            print(error)
        }
        // parse the style data
        
        // get URL
        let styleURL = Bundle.main.url(forResource: "style", withExtension: "html")
        // create data object
        do{
            let styleData = try Data(contentsOf: styleURL!)
            self.styleData = styleData
        }
        catch{
            print(error)
        }
        //decode
        
        
        
    }
    
    // MARK: Module Navigation Methods
    
    func beginModule(_ moduleid: Int) {
        
        for index in 0..<modules.count {
            if modules[index].id == moduleid {
             currentModuleIndex = moduleid
                break
            }
        }
        currentModule = modules[currentModuleIndex]
        
    }
    
}

