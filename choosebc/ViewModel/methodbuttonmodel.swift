//
//  methodbuttonmodel.swift
//  bcproblemsolving
//
//  Created by Amelia Feinberg-Eddy on 6/21/21.
//

import Foundation
class MethodButtonModel: ObservableObject {
    @Published var buttons = [MethodButton]()

    
    init(){
        self.buttons = DataService.getLocalData()
    }
    
            
}
    
    

 
