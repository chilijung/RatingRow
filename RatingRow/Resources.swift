//
//  Resources.swift
//  RatingRow
//
//  Created by LiJung on 5/12/17.
//  Copyright © 2017 LiJung. All rights reserved.
//

import Foundation
import UIKit

struct Resources {
    
    static let bundle: Bundle = {
        var bundle = Bundle(for: RatingRow.self)
        let bundleURL = bundle.url(forResource: "RatingRow", withExtension: "bundle")
        if let bundleURL = bundleURL  {
            bundle = Bundle(url: bundleURL)!
        }
        return bundle
    }()
    
}
