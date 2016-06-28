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
    
    var whichColor: Int = 0
    var red:CGFloat = 1.0
    var green:CGFloat = 1.0
    var blue:CGFloat = 1.0
    var alpha:CGFloat = 1.0

    override func viewDidLoad() {
        super.viewDidLoad()
//        label
        label = UILabel()
        label.frame = CGRectMake(190, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
//        increment button
        let button = UIButton()
        button.frame = CGRectMake(150, 250, 100, 60)
        button.setTitle("Click Me!", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(button)
//        target, method to use and control event
        button.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
//        decrement button
        let decButton = UIButton()
        decButton.frame = CGRectMake(130, 350, 150, 60)
        decButton.setTitle("Decrement Button", forState: .Normal)
        decButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(decButton)
        decButton.addTarget(self, action: #selector(ViewController.decrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
//        color button
        let colorButton = UIButton()
        colorButton.frame = CGRectMake(90, 450, 250, 60)
        colorButton.setTitle("Change the background color", forState: .Normal)
        colorButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(colorButton)

    }
    
    
    func incrementCount () {
        print("increment clicked")
        self.count += 1
        self.label.text = "\(self.count)"
//        increment the counter and keep background white
        toggleBackground(false)
    }
    
    func decrementCount () {
        print("decrement clicked")
        self.count -= 1
        self.label.text = "\(self.count)"
//        decrement the counter past 0 and the background turns red
        toggleBackground(true)
    }
    
//    function to toggle the view with each click
    func toggleBackground (isColored: Bool) {
        print("toggle backgournd color", self.view.backgroundColor)
        self.view.backgroundColor = isColored ? UIColor.redColor() : UIColor.whiteColor()
        
    }


}

