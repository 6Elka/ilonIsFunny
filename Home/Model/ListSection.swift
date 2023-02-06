//
//  ModelSections.swift
//  Home
//
//  Created by Artem on 06.02.2023.
//

import Foundation

enum ListSection {
    case first(ListItem)
    case second(ListItem)
    case third(ListItem)
    case fourth(ListItem)
    
    var items: ListItem {
        switch self {
        case
            .first(let item),
            .second(let item),
            .third(let item),
            .fourth(let item):
            return item
        }
    }
    
    var count: Int {
        return items.count
    }
}
