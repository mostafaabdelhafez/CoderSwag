//
//  cell.swift
//  coder-swag
//
//  Created by mostafaabdelhafez on 9/19/18.
//  Copyright © 2018 mostafaabdelhafez. All rights reserved.
//

import UIKit

class categorycell: UITableViewCell {

    @IBOutlet weak var Imagecategory:UIImageView!
    @IBOutlet weak var Tittlecategory:UILabel!
    
    func updatecell(category:category)
    {
        
        Imagecategory.image=UIImage(named: category.imagename)
        Tittlecategory.text=category.tittle
    }

}
