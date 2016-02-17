//
//  RecordPlayViewController.swift
//  SoundRecording
//
//  Created by Michelle Lee on 2/16/16.
//  Copyright © 2016 Michelle Lee. All rights reserved.
//

import UIKit
import AVFoundation

class RecordPlayViewController: UIViewController {

    var audioPlay : AVAudioPlayer!
    
    @IBOutlet weak var slow: UIButton!
    @IBOutlet weak var fast: UIButton!
    @IBOutlet weak var stop: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setup the filepath for the audio file
        if let filePath = NSBundle.mainBundle().pathForResource("ego", ofType: "mp3"){
            //convert filepath from string to URL
            let filePathURL = NSURL.fileURLWithPath(filePath)
            //create an instance of AVAudioPlay
            audioPlay = try? AVAudioPlayer(contentsOfURL: filePathURL)
            audioPlay.enableRate = true
            
        }
        else{
            print("Something went wrong")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func SlowBtn(sender: UIButton) {
        audioPlay.rate = 0.5
        audioPlay.currentTime = 0.0
        audioPlay.play()
        
    }
    
    @IBAction func Fastbtn(sender: UIButton) {
        audioPlay.rate = 2.0
        audioPlay.currentTime = 0.0
        audioPlay.play()
    }

    @IBAction func Stopbtn(sender: UIButton) {
        audioPlay.stop()
    }


}
