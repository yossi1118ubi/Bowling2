//
//  Genre.swift
//  Bowling
//
//  Created by Daichi Yoshikawa on 2020/08/20.
//  Copyright © 2020 Daichi Yoshikawa. All rights reserved.
//

import UIKit

class Genre: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func form(_ sender: Any) {
         self.performSegue(withIdentifier: "showForm", sender: nil)
    }
    
    @IBAction func laneAdjust(_ sender: Any) {
        self.performSegue(withIdentifier: "showLaneAdjust", sender: nil)
    }
    
    @IBAction func others(_ sender: Any) {
    }
    
    @IBAction func back(_ sender: Any) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
