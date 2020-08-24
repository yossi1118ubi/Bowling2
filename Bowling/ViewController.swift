//
//  ViewController.swift
//  Bowling
//
//  Created by Daichi Yoshikawa on 2020/08/20.
//  Copyright © 2020 Daichi Yoshikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Study(_ sender: Any) {
        self.performSegue(withIdentifier: "showGenre", sender: nil)
    }
    
    @IBAction func Movie(_ sender: Any) {
    }
    
    @IBAction func Game(_ sender: Any) {
    }
    
    @IBAction func Memo(_ sender: Any) {
         self.performSegue(withIdentifier: "showMemo", sender: nil)
    }
}

