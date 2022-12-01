//
//  ViewController.swift
//  VoiceAssistant
//
//  Created by Anshumali Karna on 01/12/22.
//

import UIKit
import InstantSearchVoiceOverlay

class ViewController: UIViewController {

    let voiceOverlay = VoiceOverlayController()
    
    
    @IBOutlet var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }

    @IBAction func recButtonAction(_ sender: UIButton) {
        voiceOverlay.start(on: self) { text, final, _ in
            if final {
                print("Final Text: \(text)")
            }
            
            else {
                print("InProgress: \(text)")
            }
            
        } errorHandler: { Error in
            
        }

    }
    
}

