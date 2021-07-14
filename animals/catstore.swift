//
//  catstore.swift
//  animals
//
//  Created by user on 2021-07-12.
//

import SwiftUI
import Combine

class catstore: ObservableObject {
    
//    @Published var store = favoriteStore()
    
    @Published var catlist: [catListModel] = catListData
    
    //@Published var getcat : [catListModel] = store.getData()
}
