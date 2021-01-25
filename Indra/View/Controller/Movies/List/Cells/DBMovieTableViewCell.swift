//
//  DBMovieTableViewCell.swift
//  Indra
//
//  Created by Derlys H. on 1/25/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import UIKit
import SDWebImage

class DBMovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func bindCellWithModel(model : DBMoviesViewModel){
        titleLabel.text = model.title
        movieImage.sd_setImage(with: URL(string: model.poster), completed: nil)
    }

}
