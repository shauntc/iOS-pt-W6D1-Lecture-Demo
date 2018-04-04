//
//  SecondViewController.swift
//  W6D1-Gestures and Animations
//
//  Created by uForis VR on 2018-04-02.
//  Copyright © 2018 shauntc. All rights reserved.
//

import UIKit

class PinchViewController: UIViewController {
    @IBAction func handleTap(_ sender: UITapGestureRecognizer) {
        redView.backgroundColor = sender.state == UIGestureRecognizerState.changed ? UIColor.blue : UIColor.red
    }
    
    @IBOutlet weak var redView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func handlePinch(_ sender: UIPinchGestureRecognizer) {
        
//        redView.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale)
    }
}

