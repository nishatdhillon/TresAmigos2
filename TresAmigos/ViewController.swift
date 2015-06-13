//
//  ViewController.swift
//  TresAmigos
//
//  Created by David L'Heureux on 2015-06-12.
//  Copyright (c) 2015 David L'Heureux. All rights reserved.
//

import UIKit



class MyViewController: UIViewController, SpeechKitDelegate, SKRecognizerDelegate
{
    var voiceSearch: SKRecognizer?
    
    override func viewDidLoad()
    {
        //Setup SpeechKit
        SpeechKit.setupWithID("NMDPTRIAL_davidlheureux_hotmail_com20150612232556", host: "sandbox.nmdp.nuancemobility.net", port: 443, useSSL: false, delegate: self)
        
    }
    
    func someAction()
    {
        self.voiceSearch = SKRecognizer(type: SKSearchRecognizerType, detection: UInt(SKLongEndOfSpeechDetection), language:"eng-USA", delegate: self)
        
    }
    
    func recognizerDidBeginRecording(recognizer: SKRecognizer!)
    {
        //The recording has started
    }
    
    func recognizerDidFinishRecording(recognizer: SKRecognizer!)
    {
        //The recording has stopped
    }
    
    func recognizer(recognizer: SKRecognizer!, didFinishWithResults results: SKRecognition!)
    {
        //The voice recognition process has understood something
    }
    
    func recognizer(recognizer: SKRecognizer!, didFinishWithError error: NSError!, suggestion: String!)
    {
        //an error has occurred
    }
}
