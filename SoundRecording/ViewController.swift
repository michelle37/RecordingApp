//
//  ViewController.swift
//  SoundRecording
//
//  Created by Michelle Lee on 2/16/16.
//  Copyright © 2016 Michelle Lee. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioRecorder:AVAudioRecorder!
    
    @IBOutlet weak var Record: UIButton!
    @IBOutlet weak var Text: UILabel!
    @IBOutlet weak var Stop: UIButton!
    
    
    override func viewDidLoad() {

        
    }
    
    func record(){
        
        //set the audio path to store in document directory on your device
        let dirPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        
        //settings
        //setup the recording file name
        let recordingName = "my_audio.wav"
        //path array variable
        let pathArray = [dirPath, recordingName]
        //setup the file path
        let filePath = NSURL.fileURLWithPathComponents(pathArray)
        print(filePath)
        
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord)
        
        try! audioRecorder = AVAudioRecorder(URL: filePath!, settings: [:])
        audioRecorder.meteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
   override func viewWillAppear(animated: Bool) {
        super.viewDidLoad()
        Text.hidden = true
        Stop.hidden = true
        Record.enabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func RecordingBtn(sender: UIButton) {
        print("this is a print test")
        Text.hidden = false
        Stop.hidden = false
        Record.enabled = false
    }
    
    @IBAction func Stopbtn(sender: UIButton) {
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }


}

