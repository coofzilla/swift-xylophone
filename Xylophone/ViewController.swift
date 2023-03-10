//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func playSound(fileName: String) {
        let url = Bundle.main.url(forResource: fileName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
        
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        if let title = sender.titleLabel?.text! {
            playSound(fileName: title)
            sender.alpha /= 2
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
                sender.alpha *= 2
            }
        }
        
    }
    
    
    
}

