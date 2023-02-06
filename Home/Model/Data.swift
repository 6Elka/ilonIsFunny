//
//  Data.swift
//  Home
//
//  Created by Artem on 06.02.2023.
//

import Foundation

struct Data {
    
    static let shared = Data()
    private init() {}
    
    private let first: ListSection = {
        .first([
        Item(image: "mask", title: "Илон Маск в России")
        ])
    }()
    
    private let second: ListSection = {
        .second([
        Item(image: "star", title: "Starlink"),
        Item(image: "star", title: "Tesla"),
        Item(image: "star", title: "Starship"),
        Item(image: "star", title: "SpaceX"),
        Item(image: "star", title: "CrewDragon"),
        Item(image: "star", title: "PayPal"),
        Item(image: "star", title: "Twitter"),
        ])
    }()
    
    private let third: ListSection = {
        .third([
        Item(image: "tv", title: ""),
        Item(image: "tv", title: ""),
        Item(image: "tv", title: "")
        ])
    }()
    
    private let fourth: ListSection = {
        .fourth([
            Item(image: "mask1", title: ""),
            Item(image: "mask2", title: ""),
            Item(image: "mask3", title: ""),
            Item(image: "mask4", title: ""),
            Item(image: "mask5", title: ""),
            Item(image: "mask6", title: ""),
            Item(image: "mask7", title: ""),
            Item(image: "mask8", title: ""),
            Item(image: "mask9", title: ""),
        ])
    }()
    
    var pageData: [ListSection] {
        return [first, second, third, fourth]
    }
}
