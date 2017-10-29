//
//  Category.swift
//  coder-swag
//
//  Created by Manohar Kurapati on 29/10/2017.
//  Copyright © 2017 Manosoft. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title:String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
    
}
