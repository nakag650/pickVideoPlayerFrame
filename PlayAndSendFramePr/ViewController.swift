//
//  ViewController.swift
//  PlayAndSendFramePr
//
//  Created by nakajimalab on 2016/11/15.
//  Copyright © 2016 nakajimalab. All rights reserved.
//

import Cocoa
import AVKit
import AVFoundation

class ViewController: NSViewController {

    @IBOutlet var playerView: AVPlayerView!
    
    var videoPlayer: AVPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let urlString = "http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8"
        let fileURL = URL(string:urlString)!
        
        let avAsset = AVURLAsset(url: fileURL , options: nil)
        
        let playerItem = AVPlayerItem(asset: avAsset)
        videoPlayer = AVPlayer(playerItem: playerItem)
        
        playerView.player = videoPlayer

    }

    override func viewWillAppear() {
        super.viewWillAppear()
        videoPlayer.pause()
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

