//
//  DBMovies.swift
//  Indra
//
//  Created by Derlys H. on 1/25/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import Foundation

struct DBMovies : Codable {
    
    let page : Int
    let totalPages : Int
    let totalResults : Int
    let results : [DBMoviewResult]
    
    enum CodingKeys : String, CodingKey {
        case page = "page"
        case totalPages = "total_pages"
        case totalResults = "total_results"
        case results = "results"
    }
    
    struct DBMoviewResult : Codable {
        
        let poster : String
        let title : String
        let note : Double
        let date : String
        let resume : String
        
        enum CodingKeys : String, CodingKey {
            case poster = "poster_path"
            case title = "title"
            case note = "vote_average"
            case date = "release_date"
            case resume = "overview"
        }
    }
  
}


