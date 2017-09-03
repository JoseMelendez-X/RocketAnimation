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
        
        //Locate our audio file
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        
        let url = URL(fileURLWithPath: path)
        
        //Getting our URL ("Audio file") can possibly fail so we need a do try block
        do {
            
            player = try AVAudioPlayer(contentsOf: url)
            
            player.prepareToPlay()
            
        }    catch let error as NSError {
            
            print(error.description)
        }
        
    }
    
    //IB-Actions
    @IBAction func powerButtonTapped(_ sender: Any) {
        
        //Show the cloud image
        clouds.isHidden = false
        
        //Hide darkBlueBG
        darkBlueBG.isHidden = true
        
        //Hide the power button
        powerButton.isHidden = true
        
        //Animation
        UIView.animate(withDuration: 2.3, animations: {
            
            //The Actual animation
            self.rocket.frame = CGRect(x: 0, y: 140, width: 240, height: 128)
            
            //Sound effect
            self.player.play()
            
        }) { (finished) in
            //What we want to happen once the animation is finished
            
            self.rocketMode.isHidden = false
            
            self.onOffLabel.isHidden = false
            
        }
        
    }
    
}

