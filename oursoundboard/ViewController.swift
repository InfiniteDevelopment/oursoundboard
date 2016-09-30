//
//  ViewController.swift
//  oursoundboard
//
//  Created by Xavier D. Johnson on 9/29/16.
//  Copyright © 2016 Xavier D. Johnson. All rights reserved.
//

import UIKit
import AVFoundation

//vars
var itsAKnifeFile = NSURL(fileURLWithPath: Bundle.main.path(forResource: "its_a_knife", ofType: "mp3")!)
var itsAKnifeAudio = AVAudioPlayer()

var twentyOneFile = NSURL(fileURLWithPath: Bundle.main.path(forResource: "21", ofType: "mp3")!)
var twentyOneAudio = AVAudioPlayer()

var savageModeFile = NSURL(fileURLWithPath: Bundle.main.path(forResource: "21_savage", ofType: "mp3")!)
var savageModeAudio = AVAudioPlayer()

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.alpha = 0.3
        backgroundImage.image = UIImage(named: "atlanta@2x.jpg")
        self.view.insertSubview(backgroundImage, at: 0)*/
        
        itsAKnifeAudio = try! AVAudioPlayer(contentsOf: itsAKnifeFile as URL, fileTypeHint: nil)
        itsAKnifeAudio.prepareToPlay()
        twentyOneAudio = try! AVAudioPlayer(contentsOf: twentyOneFile as URL, fileTypeHint: nil)
        twentyOneAudio.prepareToPlay()
        savageModeAudio = try! AVAudioPlayer(contentsOf: savageModeFile as URL, fileTypeHint: nil)
        savageModeAudio.prepareToPlay()
    }
    
    @IBAction func itsAKnifeButton(_ sender: UIButton) {
        itsAKnifeAudio.play()
    }
    
    @IBAction func twentyOneButton(_ sender: UIButton) {
        twentyOneAudio.play()
    }
    
    @IBAction func savageModeButton(_ sender: UIButton) {
        savageModeAudio.play()
    }
    
    @IBAction func stopButton(_ sender: AnyObject) {
        if (itsAKnifeAudio.isPlaying) {
            itsAKnifeAudio.stop()
            itsAKnifeAudio.currentTime = 0
        } else if(twentyOneAudio.isPlaying){
            twentyOneAudio.stop()
            twentyOneAudio.currentTime = 0
        } else if(savageModeAudio.isPlaying){
            savageModeAudio.stop()
            savageModeAudio.currentTime = 0
        } else {
            print("Nothing is playing!")
        }
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

