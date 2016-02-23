//
//  ViewController.swift
//  DragonFashion
//
//  Created by Michael Maczynski on 2/17/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    var dragonArray:[Dragon] = [Dragon]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let dragonZero = Dragon(Name: "Smaug", Description: "Crown")
        dragonArray.append(dragonZero)
        let dragonOne = Dragon(Name: "Alfred", Description: "Tail")
        dragonArray.append(dragonOne)

    
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dragonArray.count
    
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let currentDragon = dragonArray[indexPath.row]
        let currentCell = tableView.dequeueReusableCellWithIdentifier("MyCell")!
        currentCell.textLabel!.text = currentDragon.name
        return currentCell
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nvc = segue.destinationViewController as! DetailsViewController
        let currentDragon = dragonArray[(myTableView.indexPathForSelectedRow?.row)!]
        nvc.currentDragon = currentDragon
    }
    
}

