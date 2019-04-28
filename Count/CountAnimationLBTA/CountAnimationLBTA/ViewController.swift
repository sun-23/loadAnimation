//
//  ViewController.swift
//  CountAnimationLBTA
//
//  Created by Brian Voong on 6/19/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let countingLabel: UILabel = {
        let label = UILabel()
        label.text = "1234"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(countingLabel)
        countingLabel.frame = view.frame
        
        // create my CADisplayLink here
        displayLink = CADisplayLink(target: self, selector: #selector(handleUpdate))
        displayLink?.add(to: .main, forMode: .defaultRunLoopMode)
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        
       startValue = 0
       handleUpdate()
        
        
  }
   
    
    
    var displayLink: CADisplayLink?
    
    
    var startValue: Double = 0
    let endValue: Double = 100
    let animationDuration: Double = 2
    var animationStartDate = Date()
    
    @objc func handleUpdate() {
        let now = Date()
        
        var elapsedTime = now.timeIntervalSince(animationStartDate)
        
    /*  if elapsedTime > animationDuration {
            self.countingLabel.text = "\(endValue)"
            displayLink?.invalidate()
            displayLink = nil
            
            print(elapsedTime)
            
            elapsedTime = 0
            print(elapsedTime)
            
            if (displayLink != nil) {
                
                
                
            }else{
                
                
            }
            
        } else {
            let percentage = elapsedTime / animationDuration
            let value = startValue + percentage * (endValue - startValue)
            self.countingLabel.text = "\(Int(value))"
        } */
        
        
       //let percentage = elapsedTime / animationDuration
       // var value = startValue2 + percentage * (endValue - startValue2)
        
        let plusTime = 0.80/animationDuration

       if startValue > endValue {
           startValue = endValue
        
        
        
       }
       else{
        
        
        self.countingLabel.text = "DownLoad \(Int(startValue)) %"
           startValue += plusTime
        }
        
        
        
//        let seconds = Date().timeIntervalSince1970
//        print(seconds)
//        self.countingLabel.text = "\(seconds)"
    }

}














