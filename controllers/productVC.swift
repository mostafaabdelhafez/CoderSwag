//
//  productVC.swift
//  coder-swag
//
//  Created by mostafaabdelhafez on 9/22/18.
//  Copyright © 2018 mostafaabdelhafez. All rights reserved.
//

import UIKit

class productVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
   
    private(set)public var products = [Product]()
    @IBOutlet weak var productscollectionview:UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        productscollectionview.delegate=self
        productscollectionview.dataSource=self
        // Do any additional setup after loading the view.
    }

 
    func productinit(category:category){
        
       products=datacategory.instance.getproduct(nameoftitle: category.tittle)
       navigationItem.title=category.tittle
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let Cell=collectionView.dequeueReusableCell(withReuseIdentifier:ProductCell, for: indexPath)
        as! productcell
        let product=products[indexPath.row]
        Cell.updateview(products:product)
        return Cell
        
    
        
        
    }
    
    
    
    
}
