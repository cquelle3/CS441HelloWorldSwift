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
    @IBOutlet var helloView: UIView!
    @IBOutlet var helloButton: UIButton!
    var secondScreen = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //initial settings for objects
        helloLabel.text = "...hello?";
        helloLabel.textColor = UIColor.black;
        helloImage.isHidden = true;
        helloView.backgroundColor = UIColor.white;
        helloButton.tintColor = UIColor.blue;
        helloButton.setTitle("Press", for: .normal);
        
        helloImage.layer.cornerRadius = 20;
    }
    
    @IBAction func clickButton(_sender: UIButton){
        secondScreen = !secondScreen;
        if(secondScreen == true){
            helloLabel.text = "Hello World!"
            helloLabel.textColor = UIColor.white;
            helloImage.isHidden = false;
            helloView.backgroundColor = UIColor.blue;
            helloButton.tintColor = UIColor.white;
            helloButton.setTitle("Back", for: .normal);
        }
        else{
            helloLabel.text = "...hello?";
            helloLabel.textColor = UIColor.black;
            helloImage.isHidden = true;
            helloView.backgroundColor = UIColor.white;
            helloButton.tintColor = UIColor.blue;
            helloButton.setTitle("Press", for: .normal);
        }
    }
}

