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
    
    @IBOutlet var redButton: UIButton!
    @IBOutlet var blueButton: UIButton!
    @IBOutlet var greenButton: UIButton!
    
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
        
        redButton.isHidden = true;
        greenButton.isHidden = true;
        blueButton.isHidden = true;
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
            redButton.isHidden = false;
            greenButton.isHidden = false;
            blueButton.isHidden = true;
        }
        else{
            helloLabel.text = "...hello?";
            helloLabel.textColor = UIColor.black;
            helloImage.isHidden = true;
            helloView.backgroundColor = UIColor.white;
            helloButton.tintColor = UIColor.blue;
            helloButton.setTitle("Press again?", for: .normal);
            redButton.isHidden = true;
            greenButton.isHidden = true;
            blueButton.isHidden = true;
        }
    }
    
    @IBAction func redBG(_sender: UIButton){
        helloView.backgroundColor = UIColor.red;
        blueButton.isHidden = false;
        greenButton.isHidden = false;
        redButton.isHidden = true;
    }
    
    @IBAction func blueBG(_sender: UIButton){
        helloView.backgroundColor = UIColor.blue;
        redButton.isHidden = false;
        greenButton.isHidden = false;
        blueButton.isHidden = true;
    }
    
    @IBAction func greenBG(_sender: UIButton){
        helloView.backgroundColor = UIColor.green;
        redButton.isHidden = false;
        blueButton.isHidden = false;
        greenButton.isHidden = true;
    }
}

