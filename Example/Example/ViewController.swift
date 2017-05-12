//
//  ViewController.swift
//  Example
//
//  Created by LiJung on 5/12/17.
//  Copyright © 2017 LiJung. All rights reserved.
//

import UIKit
import Eureka
import RatingRow

class ViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        form
            +++ Section("Test rate row")
            <<< RatingRow()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

