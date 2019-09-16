//
//  Array.swift
//  GeekHomework
//
//  Created by Николя on 17/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

extension Array {
    func contains<T>(obj: T) -> Bool where T : Equatable {
        return self.filter({$0 as? T == obj}).count > 0
    }
}
