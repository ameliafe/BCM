//
//  favoritestabview.swift
//  choosebc
//
//  Created by Amelia Feinberg-Eddy on 5/24/21.
//

import SwiftUI

struct favoritestabview: View {
    @EnvironmentObject var bex:ButtonTest3
    //was playing around with having a button stay favorited between views, and when favorited showing up in this view
    var body: some View {
        
        if bex.buttonstate == 1.0 {
            Text("hi")
        }
        
        else {
            Text("No favorites selected")
        }
        
    }
}

struct favoritestabview_Previews: PreviewProvider {
    static var previews: some View {
        favoritestabview()
            .environmentObject(ButtonTest3())
    }
}
