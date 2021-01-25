//
//  DBMovieDetailCollectionViewController.swift
//  Indra
//
//  Created by Derlys H. on 1/25/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import UIKit

class DBMovieDetailCollectionViewController: DBBaseViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var movieSelected : DBMoviesViewModel!
    var movieDetailViewController = DBMovieDetailViewModelController()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieDetailViewController.fillMovieDetailWithModel(model: self.movieSelected)
        
    }
    
    // MARK: - UICollectionViewDelegate, UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "MovieDetailHVC", for: indexPath) as! DBMovieDetailHeaderCollectionReusableView
        
        header.imageMovie.sd_setImage(with: URL(string: self.movieSelected.poster), completed: nil)
        
        return header
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: view.frame.size.width, height: 100.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.size.width, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieDetailViewController.itemsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieDetailCVC", for: indexPath) as! DBMovieDetailCollectionViewCell
        cell.bindCellWithModel(model: self.movieDetailViewController.itemsArray[indexPath.row])
        return cell
    }

}
