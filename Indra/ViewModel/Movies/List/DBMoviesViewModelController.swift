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
    public var pagination : DBPagination?
    
    func getMovies(completion: @escaping()->Void, failure : @escaping()->Void){
        
        var page = 1
        
        if let pagination = pagination{
            page = pagination.page
            if page <= pagination.totalPages  {
                page = page + 1
            } else {
                page = 1
            }
        }
        
        DBWebService.getMovies(page: page, success: { (result) in
            
            for item in result.results{
                self.moviesViewModel.append(DBMoviesViewModel(model: item))
            }
            self.pagination = DBPagination(page: result.page, totalPages: result.totalPages, totalResults: result.totalResults)
            completion()
        }) {
            //
        }
    }
    
}
