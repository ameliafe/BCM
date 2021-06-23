//
//  methodbutton.swift
//  choosebc
//
//  Created by Amelia Feinberg-Eddy on 5/28/21.
//

import Foundation

class MethodButton: Identifiable, Decodable {
   //add data and functions to pass in from higher level, this can be the environment object that gets passed around to the button view element on each view screen
    var id:UUID?
    var name:String
    var buttonstate:Double
    
}
