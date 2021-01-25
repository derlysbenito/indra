//
//  DBItem.swift
//  Indra
//
//  Created by Derlys H. on 1/25/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import UIKit

class DBItem : NSObject {
    
    var title : String
    var detail : String
    
    init(title : String, detail : String) {
        self.title = title
        self.detail = detail
    }
    
}
