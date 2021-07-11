//
//  ContentView.swift
//  choosebc
//
//  Created by Amelia Feinberg-Eddy on 5/18/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            
            LandingPageView()
                .tabItem {
                    VStack{
                        Image(systemName: "pencil.circle.fill")
                        Text("explore")
                    }
                }
            
            favoritestabview()
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("favorites")
                    }
                }
            
            Text("this will be list of all options")
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("all methods")
                    }
                }
            Text("this will be the about page")

                .tabItem {
                    VStack{
                        Image(systemName: "info")
                        Text("about")
                
                }
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
