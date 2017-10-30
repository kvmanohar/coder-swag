//
//  ProductVC.swift
//  coder-swag
//
//  Created by Manohar Kurapati on 30/10/2017.
//  Copyright © 2017 Manosoft. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    //Used by the Segue
    private(set) public var products = [Product]()
    func  intiProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }

    //IBOutlets
    @IBOutlet weak var productsCollection: UICollectionView!
    
    //Load view
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }

    // Collection View Protocal funcitons
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell",
                                                         for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell()
    }
}
