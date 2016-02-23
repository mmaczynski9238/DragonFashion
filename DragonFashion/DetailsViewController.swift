//
//  DetailsViewController.swift
//  DragonFashion
//
//  Created by Michael Maczynski on 2/19/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var currentDragon = Dragon()
    
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = currentDragon.name
        myLabel.text = currentDragon.description
    
    }
    
    
    
    
}
