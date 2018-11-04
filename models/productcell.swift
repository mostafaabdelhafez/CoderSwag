//
//  productcell.swift
//  coder-swag
//
//  Created by mostafaabdelhafez on 9/21/18.
//  Copyright © 2018 mostafaabdelhafez. All rights reserved.
//

import UIKit

class productcell: UICollectionViewCell {
    @IBOutlet weak var productimage:UIImageView!
    @IBOutlet weak var producttitle:UILabel!
    @IBOutlet weak var productprice:UILabel!
    
    func updateview(products:Product){
        productimage.image=UIImage(named: products.imageName)
        productprice.text=products.price
        producttitle.text=products.title
    }
    
}
