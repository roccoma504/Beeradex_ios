//
//  BeerTableViewController.swift
//  Beeradex
//
//  Created by Matthew Rocco on 8/8/16.
//  Copyright © 2016 Matthew Rocco. All rights reserved.
//

import UIKit

class BeerTableViewController: UITableViewController {
    
    var beerList = ["Hipster Bullshit","Shit","Brass Shit","More Shit"]


    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Beers"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return beerList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! BeerTableViewCell
        cell.label.text = beerList[indexPath.row]
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("beerToDetail", sender: self)
    }

}
