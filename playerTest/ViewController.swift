//
//  ViewController.swift
//  playerTest
//
//  Created by Osama Jassim on 11/18/16.
//  Copyright © 2016 OsamaJassim. All rights reserved.
//

import UIKit




class ViewController: UIViewController {

    
    override func viewDidLoad() {
        
        SoundPlayer.shared.PlaySound(SoudName: "ButtonTouchSound", SoundType: ".wav")
        SoundPlayer.shared.PlaySound(SoudName: "taptap", SoundType: ".wav")

    }
    
    
    
    
    

}

