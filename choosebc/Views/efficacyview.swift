//
//  efficacyview.swift
//  choosebc
//
//  Created by Amelia Feinberg-Eddy on 5/22/21.
//

import Foundation



import SwiftUI
struct EfficacyView: View {
    @EnvironmentObject var bex:ButtonTest3
    var body: some View {
       
        VStack{
        Text("Efficacy")
            HStack{
                Button(action: {
                    if bex.buttonstate == 0.3 {
                        bex.buttonstate = 1.0
                    }
                    
                    else if bex.buttonstate == 1.0 {
                        bex.buttonstate = 0.3
                    }
                    
                    
                }, label: {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.black)
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text(bex.name)
                })
                .foregroundColor(.black)
                
            }
            .padding(.all, 11.0)
            .background(Color(.gray))
            .opacity(bex.buttonstate)
            .cornerRadius(7.0)
         
            
            
            
            
        }
        
    }
    }


struct EfficacyView_Previews: PreviewProvider {
    static var previews: some View {
        EfficacyView()
            .environmentObject(ButtonTest3())
    }
}
