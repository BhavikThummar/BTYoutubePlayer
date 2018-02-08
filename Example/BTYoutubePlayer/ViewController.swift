//
//  ViewController.swift
//  BTYoutubePlayer
//
//  Created by BhavikThummar on 02/08/2018.
//  Copyright (c) 2018 BhavikThummar. All rights reserved.
//

import UIKit
import BTYoutubePlayer

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func playVideo(_ sender: UIButton) {
        
        if sender.tag == 0 {
            
            // Load Video By Youtube Url
            
            BTYoutubePlayer.loadWith(youtubeUrl: "https://www.youtube.com/watch?v=euCqAq6BRa4", target: self)
            
        } else {
            
            // Load Video By Youtube ID
            
            BTYoutubePlayer.loadWith(id: "AJtDXIazrMo", target: self)
            
        }
    }
}

