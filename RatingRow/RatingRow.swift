//
//  RatingRow.swift
//  RatingRow
//
//  Created by LiJung on 5/12/17.
//  Copyright © 2017 LiJung. All rights reserved.
//


import Eureka
import Cosmos

public class RatingCell: Cell<Double>, CellType {
    
    lazy private var cosmosRating: CosmosView = {
        return CosmosView()
    }()
    
    private var ratingRow: RatingRow {
        return row as! RatingRow
    }
    
    open override func setup() {
        super.setup()
        selectionStyle = .none
        
        cosmosRating.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(cosmosRating)
        height = { 44 }
        
        // set constraints in tableView
        let topConstraint = NSLayoutConstraint(item: cosmosRating, attribute: .centerY, relatedBy: .equal, toItem: contentView, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        let leadingConstraint = NSLayoutConstraint(item: cosmosRating, attribute: .leading, relatedBy: .equal, toItem: contentView, attribute: .leading, multiplier: 1.0, constant: 10.0)
        
        contentView.addConstraints([topConstraint, leadingConstraint])
        cosmosRating.rating = ratingRow.rating
        
        if ratingRow.text != nil {
            cosmosRating.text = ratingRow.text!
        }
        
        if ratingRow.fillMode != nil {
            cosmosRating.settings.fillMode = ratingRow.fillMode!
        }
        
        if ratingRow.starSize != nil {
            cosmosRating.settings.starSize = ratingRow.starSize!
        }
        
        if ratingRow.starMargin != nil {
            cosmosRating.settings.starMargin = ratingRow.starMargin!
        }
        
        if ratingRow.filledColor != nil {
            cosmosRating.settings.filledColor = ratingRow.filledColor!
        }
        
        if ratingRow.emptyBorderColor != nil {
            cosmosRating.settings.emptyBorderColor = ratingRow.emptyBorderColor!
        }
        
        if ratingRow.filledBorderColor != nil {
            cosmosRating.settings.filledBorderColor = ratingRow.filledBorderColor!
        }
        
        // set rating to base value for eureka
        cosmosRating.didFinishTouchingCosmos = {[weak self] rating in
            self?.row.value = rating
            self?.ratingRow.setRating(rating)
        }
    }
    
    open override func update() {
        super.update()
        
        cosmosRating.text = ratingRow.text
        cosmosRating.rating = ratingRow.rating
    }
}

// The custom Row also has the cell: CustomCell and its correspond value
public final class RatingRow: Row<RatingCell>, RowType {
    
    // other customization https://github.com/marketplacer/Cosmos#customization
    public var fillMode: StarFillMode? = nil
    public var starSize: Double? = nil
    public var starMargin: Double? = nil
    public var filledColor: UIColor? = nil
    public var emptyBorderColor: UIColor? = nil
    public var filledBorderColor: UIColor? = nil
    public var rating: Double = 0
    public var text: String? = nil
    
    internal func setRating(_ setRate: Double) {
        print(setRate)
        rating = setRate
    }
    
    required public init(tag: String?) {
        super.init(tag: tag)
    }
}
