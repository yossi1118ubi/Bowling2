//
//  Form.swift
//  Bowling
//
//  Created by Daichi Yoshikawa on 2020/08/24.
//  Copyright © 2020 Daichi Yoshikawa. All rights reserved.
//

import UIKit

class Form: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tappledCellTaple: Int?
    
    //表の行数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return form.count
    }
    //表の内容を返す
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FormCell", for: indexPath)
        cell.textLabel?.text = form[indexPath.row].name
        return cell
    }
    //タップしたときの挙動を返す
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        self.tappledCellTaple = indexPath.row
        self.performSegue(withIdentifier: "goFormDetail", sender: nil)
        
        
    }
    //画面遷移するときに実行される
    //次の画面にデータを引き継ぐことができる
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        //次の画面のインスタンスを格納
        if let nextViewController = segue.destination as? FormDetail{
            //次の画面のインスタンスに文字列を渡す
            nextViewController.detailString = form[tappledCellTaple!]
        }
    }
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
     var form: [(name: String,comment: String, link: String)] = [("4歩助走","ああああ","https://www.youtube.com/watch?v=ijjXieV-1Wc"), ("プッシュアウェイ","いいいい","https://www.youtube.com/watch?v=ijjXieV-1Wc"), ("手遅れ","ううう","https://www.youtube.com/watch?v=ijjXieV-1Wc"), ("フォロースロー","えええええ","https://www.youtube.com/watch?v=ijjXieV-1Wc")]
        
    
    override func viewDidLoad() {
        print("viewDidLoad")
        super.viewDidLoad()
        print("dataSource")
        tableView.dataSource = self
        print("delegate")
        //Tale Viewのdelegateを設定
        tableView.delegate = self
        
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
