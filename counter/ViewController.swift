//
//  ViewController.swift
//  counter
//
//  Created by Anna Rogers on 6/27/16.
//  Copyright © 2016 Anna Rogers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
//    explicitly unwrap(can be nil and still compile)
    var label: UILabel!
    var resetButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        label
        label = UILabel()
        label.frame = CGRectMake(190, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
//        increment button
        let button = UIButton()
        button.frame = CGRectMake(20, 250, 400, 60)
        button.setTitle("Add one to the count", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(button)
//        target, method to use and control event
        button.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
//        decrement button
        let decButton = UIButton()
        decButton.frame = CGRectMake(20, 300, 400, 60)
        decButton.setTitle("Take one from the count", forState: .Normal)
        decButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(decButton)
        decButton.addTarget(self, action: #selector(ViewController.decrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
//      background color button
        let colorButton = UIButton()
        colorButton.frame = CGRectMake(120, 350, 150, 60)
        colorButton.setTitle("Add color!", forState: .Normal)
        colorButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(colorButton)
//        self.view.backgroundColor = toggleBackground()
        colorButton.addTarget(self, action: #selector(ViewController.toggleBackground), forControlEvents: UIControlEvents.TouchUpInside)
        
//        Reset the background color
        resetButton = UIButton()
        resetButton.frame = CGRectMake(90, 400, 250, 60)
        resetButton.setTitle("Remove Color", forState: .Normal)
        resetButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(resetButton)
        resetColor()
        resetButton.addTarget(self, action: #selector(ViewController.resetColor), forControlEvents: UIControlEvents.TouchUpInside)

    }
    
    func incrementCount () {
        print("increment clicked")
        count += 1
        label.text = "\(self.count)"
    }
    
    func decrementCount () {
        print("decrement clicked")
        count -= 1
        label.text = "\(self.count)"
    }
    
//    middle function between addTarget and toggleBackground
    func toggleBackground () {
        self.view.backgroundColor = UIColor(red: CGFloat(Float(arc4random()) / Float(UINT32_MAX)), green: CGFloat(Float(arc4random()) / Float(UINT32_MAX)), blue: CGFloat(Float(arc4random()) / Float(UINT32_MAX)), alpha: 1)
        resetButton.enabled = true;
        resetButton.alpha = 1;
    }
    
    func resetColor () {
        resetButton.enabled = false;
        resetButton.alpha = 0.5;
        self.view.backgroundColor = UIColor.whiteColor()
    }
    

}

