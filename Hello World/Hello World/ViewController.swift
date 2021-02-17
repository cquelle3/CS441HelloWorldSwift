//
//  ViewController.swift
//  Hello World
//
//  Created by Colin Quelle on 2/17/21.
//  Copyright © 2021 Colin Quelle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var helloLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickButton(_sender: UIButton){
        helloLabel.text = "Hello World!"
    }
}

