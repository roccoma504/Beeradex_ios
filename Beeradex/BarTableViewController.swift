//
//  BarListTableViewController.swift
//  Beeradex
//
//  Created by Matthew Rocco on 8/7/16.
//  Copyright © 2016 Matthew Rocco. All rights reserved.
//

import UIKit

class BarTableViewController: UITableViewController {
    
    var barList = ["OAISIS","THE SOCIAL","BRASS RAIL","TKI BAR"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Bars"
        barList.sortInPlace()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return barList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! BarTableViewCell
        cell.label.text = barList[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("barToBeerSegue", sender: self)
    }
    
    
}
