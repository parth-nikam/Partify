//
//  ViewController.swift
//  Partify
//
//  Created by Parth Nikam on 15/12/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound()
    }
    
    func playSound() {
        if let player = player, player.isPlaying{
            player.stop()
             
        }
        else{
        let urlString = Bundle.main.path(forResource: "Aankhon Mai Teri", ofType: "mp3")
        
    
            
        do {
               try AVAudioSession.sharedInstance().setMode(.default)
               try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                guard let urlString = urlString else{
                    return
                }
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                guard let player = player else{
                    return
                }
                
                player.play()
                
            } catch  {
                print("something went wrong")
            }
        }
    }


}

