//
//  BeerTable.swift
//  Beeradex
//
//  Created by Matthew Rocco on 8/7/16.
//  Copyright © 2016 Matthew Rocco. All rights reserved.
//

import UIKit
import XCTest

class BeerTable: XCTestCase {
    
    var vc: UITableViewController!
    
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        vc = storyboard.instantiateInitialViewController() as! UITableViewController
    }
    
    func TitleTest() {
        XCTAssert(vc.title == "Bars & Microbrews")
        
    }
    
}
