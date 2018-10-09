//
//  ViewController.swift
//  Square
//
//  Created by Admin on 09/10/2018.
//  Copyright © 2018 luong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
     var x1 = 100
     var y1 = 300
     let distance = 20
     var rect = CGRect(x: 100, y: 300, width: 20, height: 20)
    var childview: UIView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        childview = UIView(frame: rect)
        childview!.backgroundColor = UIColor.red
        
        self.view.backgroundColor = UIColor.yellow
        self.view.addSubview(childview!)
        
    }
    func Moving (x1: Int, y1: Int, width: Int, height: Int){
        
        if (x1 < width) && (y1 < height) && (x1 > 0) && (y1 > 0)
        {
            childview?.removeFromSuperview()
            rect = CGRect(x: x1, y: y1, width: 20, height: 20)
            childview = UIView(frame: rect)
            childview!.backgroundColor = UIColor.red
            self.view.addSubview(childview!)
        }
    }
    @IBAction func upAction(_ sender: Any) {
        let view = self.view.frame.size
        if y1 > 0 {
          if y1 - distance > 0 {
              y1 = y1 - distance
            } else{
            y1 = y1 - 1
        }
            Moving(x1: x1, y1: y1, width: Int(view.width), height: Int(view.height))
    }
    }
    
    @IBAction func leftAction(_ sender: Any) {
        let view  = self.view.frame.size
        if x1 < Int(view.height){
            if x1 + distance < Int(view.height) {
                x1 = x1 + distance}
            else{
                x1 = x1 + 1}
        }
        Moving(x1: x1, y1: y1, width: Int(view.width), height: Int(view.height))
        
    }
    
    @IBAction func rightAction(_ sender: Any) {
        let view = self.view.frame.size
        if x1 > 0 {
         if x1 - distance > 0{
              x1 = x1 - distance
            } else{
               x1 = x1 - 1
            }
         Moving(x1: x1, y1: y1, width: Int(view.width), height: Int(view.height))
        }
    }
    
    @IBAction func downAction(_ sender: Any) {
        let view = self.view.frame.size
        if y1 < Int(view.height) {
          if y1 + distance < Int(view.height){
               y1 = y1 + distance
            } else{
              y1 = y1 + 1
            }
        Moving(x1: x1, y1: y1, width: Int(view.width), height: Int (view.height))
    }
        
    

}
}

