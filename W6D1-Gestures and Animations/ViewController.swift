//
//  ViewController.swift
//  W6D1-Gestures and Animations
//
//  Created by uForis VR on 2018-04-02.
//  Copyright © 2018 shauntc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Outlets
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var redView: UIView!

    

    // ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        // Call animate and set the duration
        UIView.animate(withDuration: 1) {
            //Set the final values
            self.redView.backgroundColor = UIColor.green
            self.greenView.backgroundColor = UIColor.red
        }
    }

    // Actions
    @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        redView.center = location
    }
    
    @IBAction func handleSwipe(_ sender: UISwipeGestureRecognizer) {
        let center = greenView.center
        if(sender.direction == .right) {
            UIView.animate(withDuration: 1, animations: {
                self.greenView.center = CGPoint(x: center.x + 100, y: center.y)
            }) { (success) in
                UIView.animate(withDuration: 1, animations: {
                    self.greenView.center = center
                })
            }
        }
    }
    @IBAction func buttonPressed(_ sender: Any) {
        let shake = CAKeyframeAnimation()
        shake.keyPath = "position.x"
        shake.duration = 1
        
        shake.keyTimes = [0, 0.25, 0.5, 0.75, 1]
        shake.values = [0, -100, 100, -100, 0]
        shake.isAdditive = true
        shake.repeatCount = 1
        
        redView.layer.add(shake, forKey: "shake")
    }
    
}
