//
//  TrueLoveViewController.swift
//  A212擇偶作業
//
//  Created by 范博勝 on 2018/3/24.
//  Copyright © 2018年 范博勝. All rights reserved.
//

import UIKit

class TrueLoveViewController: UIViewController {
    //星座的輸入文字欄
    @IBOutlet weak var starTextField: UITextField!
    //性別
    @IBOutlet weak var sexbutton: UISegmentedControl!
    //有無才華的切換開關
    @IBOutlet weak var knowgood: UISwitch!
    //帥度，可用滑桿調整
    @IBOutlet weak var handsome: UISlider!
    //帥度值，可由帥度滑桿調整
    @IBOutlet weak var handsomevalue: UILabel!
    
    //命運中人的圖片
    @IBOutlet weak var yesImageView: UIImageView!
    
    @IBOutlet weak var noImageView: UIImageView!
    
    //顯示 就是這個人 的文字
    @IBOutlet weak var yesword: UILabel!
    
    //按下按鈕的反應
    @IBAction func buttonpress(_ sender: Any) {
    
    print("buttonpress")
     
        if starTextField.text == "天秤座" && sexbutton.selectedSegmentIndex == 0 && knowgood.isOn == true && handsomevalue2 == 100
        {
        yesImageView.isHidden = false
            yesImageView.image = UIImage(named: "李奧")
            yesword.isHidden = false
        }else{
            yesImageView.isHidden = false
            yesImageView.image = #imageLiteral(resourceName: "肥肥") //直接打圖片名字
            yesword.isHidden = false
        }
    }
    
    var handsomevalue2:Int = 1
    //拉帥度滑桿的反應
    @IBAction func handsome(_ sender: UISlider) {
    handsomevalue.isHidden = false //將原本隱藏的帥度label顯示
        handsomevalue2 = Int(sender.value)
        handsomevalue.text = "\(handsomevalue2)"
    
    
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        starTextField.text = "天秤座"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
