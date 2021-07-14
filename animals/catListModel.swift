//
//  catListStore.swift
//  animals
//
//  Created by user on 2021-07-12.
//

import Foundation
struct catListModel: Identifiable,Codable {
    var id = UUID()
    var image: String
    var title: String
    var icon: String
}

let catListData = [
    catListModel(image: "abby", title: "Abyssinian", icon: "Heart"),
    
    catListModel(image: "aegan", title: "Aegean", icon: "Heart"),

    catListModel(image: "ameribob", title: "Aegean", icon: "Heart"),

    catListModel(image: "americurl", title: "Aegean", icon: "Heart"),

    catListModel(image: "amerishort", title: "Aegean", icon: "Heart"),

    catListModel(image: "ameriwhite", title: "Aegean", icon: "Heart"),

    catListModel(image: "arabian", title: "Aegean", icon: "Heart"),

    catListModel(image: "aust", title: "Aegean", icon: "Heart"),

    catListModel(image: "bali", title: "Aegean", icon: "Heart")
]


