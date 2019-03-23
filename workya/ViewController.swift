//
//  ViewController.swift
//  workya
//
//  Created by Hackathon19 on 3/22/19.
//  Copyright © 2019 swiftbus. All rights reserved.
//

import UIKit
import Speech


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let speachStatus = SFSpeechRecognizer.authorizationStatus()
        let center = SFSpeechRecognizer.requestAuthorization { (speachStatus) in
            
        }
    }


}

