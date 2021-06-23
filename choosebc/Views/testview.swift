//
//  testview.swift
//  choosebc
//
//  Created by Amelia Feinberg-Eddy on 5/28/21.
//

import SwiftUI
//this is from when I was playing around trying to figure out a way to favorite/unfavorite each birth control method, not sure why it doesnt preview anything here becuase it worked when i pulled it into a new project to play around
//also this approach doesnt work because i think it updates all the buttons to the opacity of the most recently selected one, at least when i was playing with it in the other test project
struct testview: View {
    @EnvironmentObject var model:MethodButtonModel
    var body: some View {
        
        
        ScrollView{

            ForEach(model.buttons){r in
                            
                VStack{
                                
                                
                    HStack{
                        Button(action: {
                                            
                            if r.buttonstate == 0.3 {
                                r.buttonstate = 1.0
                                               
                                                }
                                            
                            else if r.buttonstate == 1.0 {
                                    r.buttonstate = 0.3
                                            }
                                
                                            
                            }, label: {
                                Image(systemName: "star.fill")
                                .foregroundColor(Color.black)
                                        })
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                            Text(r.name)
                            })
                                .foregroundColor(.black)
                                        
                            }
                            .padding(.all, 11.0)
                            .background(Color(.gray))
                            .opacity(r.buttonstate)
                            .cornerRadius(7.0)
                    
                
                
        
        }
        }
        }
    }
    }
        



struct testview_Previews: PreviewProvider {
    static var previews: some View {
        testview().environmentObject(MethodButtonModel())
    }
}

