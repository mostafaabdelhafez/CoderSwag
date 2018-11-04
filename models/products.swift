//
//  products.swift
//  coder-swag
//
//  Created by mostafaabdelhafez on 9/21/18.
//  Copyright © 2018 mostafaabdelhafez. All rights reserved.
//

import Foundation
struct Product {
    public var title:String
   public var price:String
     public var imageName:String
    init(title:String,price:String,imageName:String)
    {
        self.title=title
        self.price=price
        self.imageName=imageName
        
    }
    
}
