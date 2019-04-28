//
//  ViewController.swift
//  CountAnimationLBTA
//
//  Created by Brian Voong on 6/19/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var countingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(countingLabel)
        countingLabel.frame = view.frame
        
        // create my CADisplayLink here
        displayLink = CADisplayLink(target: self, selector: #selector(handleUpdate))
        displayLink?.add(to: .main, forMode: .defaultRunLoopMode)
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    
        startText = ""
        startValue = 0
        
        
        handleUpdate()
        
        
  }
   
    
    
    var displayLink: CADisplayLink?
    let animationDuration: Double = 2
    
    var startText = ""
    var startValue = 0
     let endText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."

    
    @objc func handleUpdate() {
        
        
        let endTextValue = endText.count - 1
        
        let index = endText.index(endText.startIndex, offsetBy: startValue)
        
       
        
        if startText == endText {
            
            startText = endText
            
        }else{
            self.countingLabel.text = "\(startText)"
            
            startText += String(endText[index])
            startValue += 1
            
        }
        print(endTextValue)
        
//      self.countingLabel.text = "\(startValue)"
//        startValue += 1
//
//        if startValue > endValue {
//            startValue = endValue
//        }
//        let seconds = Date().timeIntervalSince1970
//        print(seconds)
//        self.countingLabel.text = "\(seconds)"
    }

}














