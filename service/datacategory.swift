//
//  datacategory.swift
//  coder-swag
//
//  Created by mostafaabdelhafez on 9/20/18.
//  Copyright © 2018 mostafaabdelhafez. All rights reserved.
//

import Foundation
class datacategory{
    
    static let instance=datacategory()
    let categories=[
    category(tittle: "HOODIES", imagename: "hoodies.png"),category(tittle: "SHIRT", imagename: "shirts.png")
    ,category(tittle: "HATS", imagename: "hats.png")]
    func  getthecategories() ->[category]{
        
        return categories
        
    }
    
    

    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie04.png"),
        
        ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")
    ]
    private let digitalgood=[Product]()
    
    func getshirts() ->[Product]{
        return shirts
    }
    func gethats() ->[Product]{
        return hats
    }
    func gethoodies() ->[Product]{
        return hoodies
    }
    func getdigitalgood() ->[Product]{
        return digitalgood
    }
    func getproduct(nameoftitle title:String) ->[Product]{
        
        switch title {
        case "SHIRTS":
           return  getshirts()
        case "HATS":
            return gethats()
        case "HOODIES":
           return gethoodies()
        case "DIGITAL":
            return getdigitalgood()
        default:
           return  getshirts()
        }
        
        
    }
    
    
    
  
}





    

