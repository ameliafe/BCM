//
//  buttontestmodel.swift
//  choosebc
//
//  Created by Amelia Feinberg-Eddy on 5/23/21.
//

import SwiftUI


class ButtonTest3: ObservableObject{
   //add data and functions to pass in from higher level, this can be the environment object that gets passed around to the button view element on each view screen
    @Published var buttonstate = 1.0
    var name = "Implant"
}
