//
//  DBMoviesViewModel.swift
//  Indra
//
//  Created by Derlys H. on 1/25/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import Foundation

struct DBMoviesViewModel {
    
    var poster : String
    var title : String
    var note : Double
    var date : String
    var resume : String
    
    init(model : DBMovies.DBMoviewResult) {
        self.poster = "https://image.tmdb.org/t/p/w500/" + (model.poster ?? "")
        self.title = model.title ?? ""
        self.note = model.note ?? 0
        self.date = model.date ?? ""
        self.resume = model.resume ?? ""
    }
    
}
