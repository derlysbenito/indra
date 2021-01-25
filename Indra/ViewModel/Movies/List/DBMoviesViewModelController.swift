//
//  DBMoviesViewModelController.swift
//  Indra
//
//  Created by Derlys H. on 1/25/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import Foundation

class DBMoviesViewModelController {
    
    public var moviesViewModel = [DBMoviesViewModel]()
    
    func getMovies(page : Int, completion: @escaping()->Void, failure : @escaping()->Void){
        DBWebService.getMovies(page: page, success: { (result) in
            
            for item in result.results{
                self.moviesViewModel.append(DBMoviesViewModel(model: item))
            }
            completion()
        }) {
            //
        }
    }
    
}
