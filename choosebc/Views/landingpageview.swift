//
//  landingpage.swift
//  choosebc
//
//  Created by Amelia Feinberg-Eddy on 5/19/21.
//

import SwiftUI
struct LandingPageView: View {
    var body: some View{
        NavigationView{
        List {
            NavigationLink(
                destination: EfficacyView(),
                label: {
                    Text( "How Effective It Is")
                })
            NavigationLink(
                destination: FrequencyView(),
                label: {
                    Text( "How Often I Would Use It")
                })
            
            NavigationLink(
                destination: MethodofUseView(),
                label: {
                    Text( "How it is used")
                })
            NavigationLink(
                destination: NonHormonalView(),
                label: {
                    Text( "No Hormones")
                })
            NavigationLink(
                destination: HeavyPeriodView(),
                label: {
                    Text( "Treating Heavy/Painful Periods")
                })
            
            NavigationLink(
                destination: EmergencyConView(),
                label: {
                    Text( "Emergency Contraception")
                })
            NavigationLink(
                destination: testview(),
                label: {
                    Text( "Test View")
                })
            

        }.navigationBarTitle("I want to pick my birth control based on....")
        .environmentObject(MethodButtonModel())
        
        }
        
    
}
}

struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageView().environmentObject(MethodButtonModel())
            
    }
}
