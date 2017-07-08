//
//  ViewController.swift
//  pocketMath
//
//  Created by Olteanu Andrei on 27/03/2017.
//  Copyright © 2017 Olteanu Andrei. All rights reserved.
//

import UIKit

import RevealingSplashView








class ViewController: UIViewController {
    
    
    
    
    
    @IBOutlet weak var pocketMathAnimated: UIImageView!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Initialize a revealing Splash with with the iconImage, the initial size and the background color
        let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "launchScreen")!,iconInitialSize: CGSize(width: 130, height: 130), backgroundColor: UIColor.white)
        
        //Adds the revealing splash view as a sub view
        self.view.addSubview(revealingSplashView)
        revealingSplashView.animationType = SplashAnimationType.woobleAndZoomOut
        
        //Starts animation
        revealingSplashView.startAnimation(){
            print("Completed first animation")
        }

 
//        pocketMathAnimated.loadGif(name:"pocketMathAnimated")
        
        _ = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)

        
    }
    
    
    
//    Function to return to the Home viewController after 1 second
//
//    _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)  -----> called in viewDidLoad()
//
    
    
    
    func timeToMoveOn() {
        self.performSegue(withIdentifier: "goHome", sender: self)
    }
    
    
    
    
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

