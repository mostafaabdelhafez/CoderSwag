//
//  ViewController.swift
//  coder-swag
//
//  Created by mostafaabdelhafez on 9/19/18.
//  Copyright © 2018 mostafaabdelhafez. All rights reserved.
//

import UIKit

class categoriesvc: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datacategory.instance.categories.count
    }
    
    
    
    @IBOutlet weak var categorytableview:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        categorytableview.dataSource=self
        categorytableview.delegate=self
        
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let Cell=tableView.dequeueReusableCell(withIdentifier: CategoryCell, for: indexPath) as? categorycell{

    let Category=datacategory.instance.getthecategories()[indexPath.row]
Cell.updatecell(category: Category)
            return Cell
        }
        else {return categorycell()
            
        }
        
        
    
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let categoryforsegue=datacategory.instance.categories[indexPath.row]
        performSegue(withIdentifier: ProductSegue, sender:categoryforsegue)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var barbton=UIBarButtonItem()
        barbton.title=""
        navigationItem.backBarButtonItem=barbton
        
        let productvc=segue.destination as! productVC
        assert(sender as! category != nil)
        productvc.productinit(category: sender as! category)
        
    }
    
    
    
    
}





