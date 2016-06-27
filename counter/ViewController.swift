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

    override func viewDidLoad() {
        super.viewDidLoad()
//        label
        label = UILabel()
        label.frame = CGRectMake(190, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
//        increment button
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 100, 60)
        button.setTitle("Click Me!", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
//        target, method to use and control event
        button.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
//        decrement button
        var decButton = UIButton()
        decButton.frame = CGRectMake(130, 350, 150, 60)
        decButton.setTitle("Decrement Button", forState: .Normal)
        decButton.setTitleColor(UIColor.brownColor(), forState: .Normal)
        self.view.addSubview(decButton)
        decButton.addTarget(self, action: #selector(ViewController.decrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    
    func incrementCount () {
        print("increment clicked")
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    func decrementCount () {
        print("decrement clicked")
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
//    function to toggle the view with each click
    func toggleBackground () {
        print("toggle backgournd color")
//        todo
    }
    
//    additional label to increment with the first?


}

