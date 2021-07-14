//
//  ContentView.swift
//  animals
//
//  Created by user on 2021-07-11.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var favorites = favoriteStore()
    
    @State var list: [catListModel] = []
    let firstElement = catListModel(image: "abby", title: "Abbynasian", icon: "heart")
    let secondElement = catListModel(image: "abby", title: "Abbynasian", icon: "heart")
    func favoriteItem() {
        list.append(contentsOf: [firstElement, secondElement])
    }
    
//    func favoriteItem2(_item:catListModel) {
//        list.append(_item)
//    }
    
    @ObservedObject var cats = catstore()
    func addUpdate() {
        cats.catlist.append(catListModel.init(image: "abby", title: "Abbynasian", icon: "heart"))
        
    }
    var body: some View {
        NavigationView {
            List {
                ForEach(cats.catlist) { catlists in
                        HStack {
                            Image(catlists.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .background(Color.black)
                                .cornerRadius(10)
                                .padding(.trailing, 24)
                            
                            
                                Text(catlists.title)
                                    .font(.system(size: 18, weight: .light))
                                
                            Spacer()
                            
                            HStack {
                                Button(action: {
                                      if self.favorites.contains(catlists) {
                                          self.favorites.remove(catlists)
                                      } else {
                                          self.favorites.add(catlists)
                                      }
                                }) {
                                
                                    Image(systemName: favorites.contains(catlists) ? "heart.fill" : "heart")
                                        .font(.headline)
                                        .foregroundColor( favorites.contains(catlists) ? .red : .black)
                                }
                            }
                            
                                   // .foregroundColor(Color(#colorLiteral(red: 1, green: 0.1098039225, blue: 0.05098039284, alpha: 1)))
                                
                           
                                
                            
                        }
                        .padding(.all, 20.0)
                        .listRowInsets(EdgeInsets())
                        .background(Color.white)
                }
                    
            }.navigationBarTitle(Text("All Cats"))
            
    
                
            }
           
        }
        
        



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}


