//
//  DataService.swift
//  choosebc
//
//  Created by Amelia Feinberg-Eddy on 5/28/21.
//

import Foundation

class DataService {
    static func getLocalData() -> [MethodButton]{
        //parse local json file
        //get a url path to json fileth
        let pathString = Bundle.main.path(forResource: "buttons", ofType: "json")
        // pathString might be nil, so check for it, can use guard statement
        guard pathString != nil else {
            return[MethodButton]()
        }
        //create url object
        let url = URL(fileURLWithPath: pathString!)
        //create data object
        do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
            do{
            let buttonData = try decoder.decode([MethodButton].self, from: data)
            
                for m in buttonData {
                    m.id = UUID ()
                }
                return buttonData
            
            
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
       // decode data with a json decoder
        
    
    return [MethodButton]()
}
}
