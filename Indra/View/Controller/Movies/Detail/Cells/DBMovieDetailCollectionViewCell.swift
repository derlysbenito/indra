//
//  DBMovieDetailCollectionViewCell.swift
//  Indra
//
//  Created by Derlys H. on 1/25/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import UIKit

class DBMovieDetailCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var detail: UILabel!
    
    public func bindCellWithModel(model : DBItem){
        title.text = model.title
        detail.text = model.detail
    }
    
    
}
