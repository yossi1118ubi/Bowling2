//
//  DetailViewController.swift
//  Bowling
//
//  Created by Daichi Yoshikawa on 2020/08/24.
//  Copyright © 2020 Daichi Yoshikawa. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TextViewに表示する
        memoTextView.text = selectedMemo

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var memoTextView: UITextView!
    var selectedRow: Int!
    var selectedMemo: String!
    
    
    @IBAction func DeleteMemo(_ sender: Any) {
        let ud = UserDefaults.standard
        if ud.array(forKey: "memoArray") != nil{
            var saveMemoArray = ud.array(forKey: "memoArray") as! [String]
            saveMemoArray.remove(at: selectedRow)
            ud.set(saveMemoArray, forKey: "memoArray")
            ud.synchronize()
            //画面遷移
            self.navigationController?.popViewController(animated: true)
            }
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
