//
//  DataService.swift
//  coder-swag
//
//  Created by Manohar Kurapati on 29/10/2017.
//  Copyright © 2017 Manosoft. All rights reserved.
//

import Foundation
class DataService{
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    func getCategories() -> [Category]{
        return categories
    }
    
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie" , price: "£18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "£20", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "£25", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Hat Red", price: "£10", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodies Grey", price: "£25", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodies Blue", price: "£35", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodies Red", price: "£50", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodies Green", price: "£15", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo shirt Grey", price: "£25", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo shirt Blue", price: "£15", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo shirt Red", price: "£10", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo shirt Green", price: "£10", imageName: "shirt04.png"),
        Product(title: "Devslopes Logo shirt Black", price: "£10", imageName: "shirt05.png")
    ]

    private let digitalGoods = [Product]()
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "HATS":
            return hats
        case "HOODIES":
            return hoodies
        case "SHIRTS":
            return shirts
        case "DIGITAL":
            return digitalGoods
        default:
            return shirts
        }
    }
}
