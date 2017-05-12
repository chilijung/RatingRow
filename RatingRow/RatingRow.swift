//
//  RatingRow.swift
//  RatingRow
//
//  Created by LiJung on 5/12/17.
//  Copyright © 2017 LiJung. All rights reserved.
//


import Eureka
import Cosmos

public class Rating: Cell<String>, CellType {
    
    @IBOutlet weak var rating: CosmosView!
    
    override public func setup() {
        super.setup()
        
        // clear color
        self.backgroundColor = UIColor.clear
        rating.backgroundColor = UIColor.clear
        rating.rating = 0
        
        // set rating to base value for eureka
        rating.didFinishTouchingCosmos = { rating in
            self.row.value = String(format:"%.1f", rating)
        }
    }
}

// The custom Row also has the cell: CustomCell and its correspond value
public class _RatingRow: Row<Rating> {
    required public init(tag: String?) {
        super.init(tag: tag)
        // We set the cellProvider to load the .xib corresponding to our cell
        cellProvider = CellProvider<Rating>(nibName: "Rating")
    }
}

public final class RatingRow: _RatingRow, RowType {
    required public init(tag: String?) {
        super.init(tag: tag)
    }
}
