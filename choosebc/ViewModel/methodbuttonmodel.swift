//
//  buttonmodel.swift
//  choosebc
//
//  Created by Amelia Feinberg-Eddy on 5/28/21.
//

import Foundation

class MethodButtonModel: ObservableObject {
    @Published var buttons = [MethodButton]()
    
    init(){
        self.buttons = DataService.getLocalData()
    }
}
