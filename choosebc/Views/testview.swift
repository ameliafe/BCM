//
//  testview.swift
//  bcproblemsolving
//
//  Created by Amelia Feinberg-Eddy on 6/21/21.
//

import SwiftUI

struct testview: View {
    
    @EnvironmentObject var model:MethodButtonModel
   
    
    
    var body: some View {
        
    
                ScrollView{

                    ForEach(model.buttons){r in
                        
                        VStack{
                            
                            if r.favorite == true {
                                
                                HStack{
                                    Button(action: {
                                            r.favorite = false
                                        
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
                                        .opacity(1.0)
                                        .cornerRadius(7.0)
                                
                                
                            }
                            
                            else if r.favorite == false{
                                HStack{
                                    Button(action: {
                                            r.favorite = true
                                        
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
                                        .opacity(0.3)
                                        .cornerRadius(7.0)
                            }
                            
                                
                                
                                
                                            
                                
                                
                            
                            
                    
                    
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

