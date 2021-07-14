//
//  faView.swift
//  animals
//
//  Created by user on 2021-07-14.
//

import SwiftUI

struct faView: View {
    @ObservedObject var favItem = favoriteStore()
    func addFav() {
        favItem.catlist2.append(catListModel.init (image: "abby", title: "Abbynasian", icon: "heart"))
    }

//    let taskIds: Set<String> = favItem.getTasksIds()
//    let taskArray = Array(taskIds)
//    @ObservedObject var favItem2 = catstore()
//    func addFav() {
//        favItem2.catlist.append(catListModel.init(image: "abby", title: "Abbynasian", icon: "heart"))
//
//    }


    var body: some View {
        NavigationView {
            LazyVGrid (columns: [GridItem(.adaptive(minimum: 200))]) {
                ForEach(favItem.catlist2){ update in
                    VStack {
                        Image(update.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120, height: 120)
                        
                        HStack{
                            Text(update.title)
                                .font(.system(size: 18))
                            Spacer()
                            Image(systemName:"heart.fill")
                                .foregroundColor(.red)
                                
                        }
                        .frame(width: 150)
                        .padding(.all)
                    }
                    
                }
            }
        }
        
        
//        VStack {
//            NavigationView {
//
//                LazyVGrid (columns: [GridItem(.adaptive(minimum: 90))]) {
//                    ForEach (favItem.getData()) { update in
//                        cardView(content: emoji)
//                            .aspectRatio(2/3, contentMode: .fit)
//                    })
//
//                }
//            }
//
//            Spacer()
//
//
//        }
    }
}

struct faView_Previews: PreviewProvider {
    static var previews: some View {
        faView()
    }
}
