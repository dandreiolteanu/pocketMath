//
//  ViewController.swift
//  pocketMath
//
//  Created by Olteanu Andrei on 27/03/2017.
//  Copyright © 2017 Olteanu Andrei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonSub1Constraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonSub1Constraint.constant -= view.bounds.width
        
        
    }
    
    
    var animationPerformedOnce = false
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if !animationPerformedOnce {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.buttonSub1Constraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            
//            UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseOut, animations: {
//                self.button2Constraint.constant += self.view.bounds.width
//                self.view.layoutIfNeeded()
//            }, completion: nil)
            
            animationPerformedOnce = true
        }
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

