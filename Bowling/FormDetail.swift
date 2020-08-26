//
//  FormDetail.swift
//  Bowling
//
//  Created by Daichi Yoshikawa on 2020/08/26.
//  Copyright © 2020 Daichi Yoshikawa. All rights reserved.
//

import UIKit

class FormDetail: UIViewController {
    
    //前の画面から値が引き継がれる
    var detailString: (name:String, comment: String, link: String)?
    
    @IBOutlet weak var textTop: UITextView!
    
    @IBOutlet weak var textMiddle: UITextView!
    
    @IBOutlet weak var textBottom: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textTop.text = detailString?.name
        textMiddle.text = detailString?.comment
        textBottom.text = detailString?.link
        // Do any additional setup after loading the view.
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
