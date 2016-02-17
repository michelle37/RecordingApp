//
//  ViewController.swift
//  SoundRecording
//
//  Created by Michelle Lee on 2/16/16.
//  Copyright © 2016 Michelle Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Record: UIButton!
    @IBOutlet weak var Text: UILabel!
    @IBOutlet weak var Stop: UIButton!
    
    
    override func viewDidLoad() {

        
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
    }


}

