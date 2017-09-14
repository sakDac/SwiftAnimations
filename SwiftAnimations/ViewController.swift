//
//  ViewController.swift
//  SwiftAnimations
//
//  Created by Saket Bhushan on 31/08/17.
//  Copyright © 2017 Saket Bhushan. All rights reserved.
//
// https://github.com/ameizi/awesome-ios-animation



import UIKit

// didn't find very usefull as it crashes also in some cases.
import pop

// this one is very usefull.
// https://github.com/daltoniam/DCAnimationKit
import DCAnimationKit

class ViewController: UIViewController {

    
    @IBOutlet weak var aniView: UIView!
    
    
    @IBOutlet weak var lblAnimate: UIButton!
    
    @IBOutlet weak var aniLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }

    @IBAction func handleStartBtn(_ sender: UIButton) {
        self.aniView.tada {
                self.aniView.hinge {
                    self.lblAnimate.isHidden = true
            }
        }
    }
    
    
    @IBAction func handleStopBtn(_ sender: UIButton) {
        
    }
    
    @IBAction func handlePanGestureAniView(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: self.view)
        
        sender.view!.center = CGPoint(x: sender.view!.center.x + translation.x, y: sender.view!.center.y + translation.y)
        
        sender.setTranslation(CGPoint.zero, in: self.view)
        
    }
}

