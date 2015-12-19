//
//  ViewController.swift
//  Scale
//
//  Created by Dion Pettaway on 18/12/15.
//  Copyright © 2015 Dion Pettaway. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            if #available(iOS 9.0, *) {
                if traitCollection.forceTouchCapability == UIForceTouchCapability.Available {
                    if touch.force >= touch.maximumPossibleForce {
                        forceLabel.text = "385+ grams"
                    } else {
                        let force = touch.force/touch.maximumPossibleForce
                        let grams = force * 385
                        let roundGrams = Int(grams)
                        forceLabel.text = "\(roundGrams) grams"
                    }
                }
            }
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        forceLabel.text = "0 grams"
    }
    

}

