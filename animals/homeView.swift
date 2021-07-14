//
//  tabView.swift
//  animals
//
//  Created by user on 2021-07-12.
//

import SwiftUI

struct homeView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image("tab.cat")
                    Text("All Cats")
                }
            
                
            
           faView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Cats I like")
                    
                }
        }
        .background(Color.white)
        .accentColor(.black)
        
        
        
         
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
