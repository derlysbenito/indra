//
//  DBMovieDetailViewModelController.swift
//  Indra
//
//  Created by Derlys H. on 1/25/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import UIKit

class DBMovieDetailViewModelController : NSObject{
    
    public var itemsArray = [DBItem]()
    
    
    func fillMovieDetailWithModel(model : DBMoviesViewModel){
        
        itemsArray = [DBItem]()
        
        itemsArray.append(DBItem(title: "Pelicula", detail: model.title))
        itemsArray.append(DBItem(title: "Nota", detail: "\(model.note)"))
        itemsArray.append(DBItem(title: "Fecha de lanzamiento", detail: model.date))
        itemsArray.append(DBItem(title: "Resumen de pelicula", detail: model.resume))
       
    }
    
    
}
