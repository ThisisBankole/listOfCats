//
//  Favorite.swift
//  animals
//
//  Created by user on 2021-07-14.
//

import Foundation
class favoriteStore: ObservableObject {
    @Published var catlist2: [catListModel] = catListData
    private var list: Set<String>
    let defaults = UserDefaults.standard
    
    init() {
        let decoder = JSONDecoder()
        if let data = defaults.value(forKey: "Favorites") as? Data {
            let listData = try? decoder.decode(Set<String>.self, from: data)
            self.list = listData ?? []
        } else {
            self.list = []
        }
    }
    
    func getTaskIds() -> Set<String> {
        return self.list
    }
    
    func isEmpty() -> Bool {
        list.count < 1
    }
    
    func contains(_ listitem: catListModel) -> Bool {
        list.contains("\(listitem.id)")
    }
    
    func add(_ listitem: catListModel) {
        objectWillChange.send()
        list.insert("\(listitem.id)")
        save()
    }
    
    func remove(_ listitem: catListModel) {
        objectWillChange.send()
        list.remove("\(listitem.id)")
        save()
    }
    
    func save() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(list) {
            defaults.set(encoded, forKey: "Favorites")
        }
    }
    
     func getData() -> [catListModel] {
        var  listData : [catListModel] = []
        let decoder = JSONDecoder()
        if let data = defaults.value(forKey: "Favorites") as? Data {
           _ = try! decoder.decode(Set<String>.self, from: data)
//            listData = try! decoder.decode([catListModel].self, from: data)
            ///self.list = listData ?? []
        } else {
            listData = []
        }
        return listData
    }
}

