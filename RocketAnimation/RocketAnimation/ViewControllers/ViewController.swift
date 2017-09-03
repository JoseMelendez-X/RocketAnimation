//
//  ViewController.swift
//  RocketAnimation
//
//  Created by Jose Melendez on 9/3/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

import UIKit

//In order to play audio we need to import AVFoundation
import  AVFoundation

class ViewController: UIViewController {

    //IB-Outlets
    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var clouds: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var rocketMode: UILabel!
    @IBOutlet weak var onOffLabel: UILabel!
    
    
    //AVAudioPlayer allows for playback of audio
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    //IB-Actions
    @IBAction func powerButtonTapped(_ sender: Any) {
        
    }
    
}

