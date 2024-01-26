//
//  ViewController.swift
//  video_player
//
//  Created by Vishal Sharma on 1/20/24.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playvideo()
    }
    
    private func playvideo(){
        guard let path=Bundle.main.path(forResource: "Penguins", ofType: "mp4") else{
            debugPrint("Penguins.mp4 is not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
}
    

