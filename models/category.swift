//
//  category.swift
//  coder-swag
//
//  Created by mostafaabdelhafez on 9/20/18.
//  Copyright © 2018 mostafaabdelhafez. All rights reserved.
//

import Foundation
struct category {
    private(set) public var tittle:String
    private(set) public var imagename:String
    init(tittle:String,imagename:String)
    {
        self.tittle=tittle
        self.imagename=imagename
    }
}
