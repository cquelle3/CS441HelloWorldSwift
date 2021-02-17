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
    
    @IBOutlet var helloImage : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        helloImage.isHidden = true;
    }
    
    @IBAction func clickButton(_sender: UIButton){
        helloLabel.text = "Hello World!"
        helloImage.isHidden = false;
    }
}

