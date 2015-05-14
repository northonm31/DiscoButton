//
//  ViewController.swift
//  DiscoButton
//
//  Created by Adam Corcoran on 14/05/2015.
//  Copyright (c) 2015 Adam Corcoran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var iteration:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func changeColour(sender: AnyObject) {
        
        switch(self.iteration) {
            case 1:
                self.view.backgroundColor = self.convertRBGtoAppleRGB(38, green: 53, blue: 80)
                self.iteration++
            case 2:
                self.view.backgroundColor = self.convertRBGtoAppleRGB(139, green: 190, blue: 184)
                self.iteration++
            case 3:
                self.view.backgroundColor = self.convertRBGtoAppleRGB(64, green: 47, blue: 86)
                self.iteration++
            case 4:
                self.view.backgroundColor = self.convertRBGtoAppleRGB(143, green: 53, blue: 129)
                self.iteration++
            default:
                self.view.backgroundColor = self.convertRBGtoAppleRGB(0, green: 0, blue: 0)
                self.iteration = 1
        }
    }
    
    func convertRBGtoAppleRGB(red:Int, green:Int, blue:Int) -> UIColor
    {
        var newRed:CGFloat
        var newGreen:CGFloat
        var newBlue:CGFloat
        
        newRed = CGFloat(red)/255
        newGreen = CGFloat(green)/255
        newBlue = CGFloat(blue)/255
        
        return UIColor(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
}

