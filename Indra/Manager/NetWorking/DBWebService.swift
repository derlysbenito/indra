//
//  DBWebService.swift
//  Indra
//
//  Created by Derlys H. on 1/25/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import UIKit
import Alamofire

class DBWebService: NSObject {
    
    static func getMovies(page : Int, success : @escaping(DBMovies)->Void, failure : @escaping()->Void){
        
        let parameters : Parameters = ["page" : page, "api_key" : "f46b58478f489737ad5a4651a4b25079"]
        
        AF.request("https://api.themoviedb.org/3/movie/upcoming", method: .get, parameters: parameters, encoding: URLEncoding.default, headers: nil, interceptor: nil, requestModifier: nil).validate(statusCode: 200..<300).responseData { (response) in
            
            switch response.result{
                
            case .success(let data):
                do {
                    let decoder = JSONDecoder()
                    let result = try
                        decoder.decode(DBMovies.self, from: data)
                    success(result)
                    
                } catch let error {
                    print("error : \(error)")
                }
                
            case .failure(let error):
                print("error : \(error)")
            }
        }
        
    }

}
