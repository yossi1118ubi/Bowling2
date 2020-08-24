//
//  AddMemoViewController.swift
//  Bowling
//
//  Created by Daichi Yoshikawa on 2020/08/24.
//  Copyright © 2020 Daichi Yoshikawa. All rights reserved.
//

import UIKit

class AddMemoViewController: UIViewController {
    
   //めもを入力するTextViewと連携している
    @IBOutlet weak var memoTextView: UITextView!
    //おまじない
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    
    //保存ボタンと連携している
    @IBAction func save(_ sender: Any) {
        //inputTextに今入力されているテキストを入力
        let inputText = memoTextView.text
        //ユーザデェフォルトのインスタンス
        let ud = UserDefaults.standard
        if ud.array(forKey: "memoArray") != nil{
            //saveMemoArrayに取得
            var saveMemoArray = ud.array(forKey: "memoArray") as! [String]
            //テキストに何か書かれているか?
            if inputText != ""{
                //配列に追加
                //userdefaultについてはまた詳しく勉強したい
                saveMemoArray.append(inputText!)
                ud.set(saveMemoArray, forKey: "memoArray")
            }else{
                showAlert(title: "何も入力されていません")
            }
            
        }else{
            //最初, 何も書かれていない場合
            var newMemoArray = [String]()
            //nilを強制アンラップはエラーが出るから
            if inputText != ""{
                //inputtextはoptional型だから強制アンラップ
                newMemoArray.append(inputText!)
                ud.set(newMemoArray, forKey: "memoArray")
            }else{
                showAlert(title: "何も入力されていません")
                
            }
        }
        showAlert(title: "保存完了")
        ud.synchronize()
        
    }
    
    func showAlert(title: String){
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "キャンセル", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
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
