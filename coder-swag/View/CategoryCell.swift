//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Manohar Kurapati on 29/10/2017.
//  Copyright © 2017 Manosoft. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category:Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
