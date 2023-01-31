//
//  Next_ResultViewController.swift
//  ShipsOnBoard
//
//  Created by clark on 2022/10/03.
//

import UIKit

class Next_ResultViewController: UIViewController {

    @IBOutlet weak var BoardJudge: UILabel!
    @IBOutlet weak var BoardPeople: UILabel!
    @IBOutlet weak var Maxonboard: UILabel!
    @IBOutlet weak var Adult: UILabel!
    @IBOutlet weak var child: UILabel!
    @IBOutlet weak var Baby: UILabel!
    @IBOutlet weak var BabiesHeavy: UILabel!
    @IBOutlet weak var people: UIStackView!
    @IBOutlet weak var Judge: UIStackView!
    @IBOutlet weak var AbleOrNotAble: UIStackView!
    
    var max = ""
    var adlt = ""
    var cld = ""
    var bab = ""
   
    override func viewDidLoad() {
        super.viewDidLoad()
        people.layer.borderWidth = 5.0
        people.layer.borderColor = UIColor.gray.cgColor
        people.layer.cornerRadius = 7.0
        Judge.layer.borderWidth = 5.0
        Judge.layer.borderColor = UIColor.gray.cgColor
        Judge.layer.cornerRadius = 7.0
        print(adlt)
        let Child = Float(cld)! * 0.5
        let FinalOnBoard = Int((Float(adlt)! + Float(Child))*10)/10
        if Float(max)! >= Float(FinalOnBoard) {
            if Float(bab)! > Float(max)! {
                BoardJudge.text = "全員乗船可能"
                BabiesHeavy.text = "乳幼児の乗せ過ぎによる\n転覆・沈没に注意"
                AbleOrNotAble.layer.borderWidth = 5.0
                AbleOrNotAble.layer.cornerRadius = 8.0
                AbleOrNotAble.layer.borderColor = UIColor.systemOrange.cgColor
                BoardJudge.textColor = UIColor.green
                BabiesHeavy.textColor = UIColor.orange
            }else{
                BoardJudge.text = "全員乗船可能"
                BabiesHeavy.text = "注意事項なし"
                AbleOrNotAble.layer.borderWidth = 5.0
                AbleOrNotAble.layer.cornerRadius = 8.0
                AbleOrNotAble.layer.borderColor = UIColor.green.cgColor
                BoardJudge.textColor = UIColor.green
                BabiesHeavy.textColor = UIColor.orange
            }
            
            
        }else if Float(max)! < Float(FinalOnBoard){
            BoardJudge.text = "乗船不可能"
            BabiesHeavy.text = "人数が多すぎます。"
            AbleOrNotAble.layer.borderWidth = 5.0
            AbleOrNotAble.layer.cornerRadius = 8.0
            AbleOrNotAble.layer.borderColor = UIColor.red.cgColor
            BoardJudge.textColor = UIColor.red
            BabiesHeavy.textColor = UIColor.red
        }
        BoardPeople.text = "乗船人数" + "：" + String(FinalOnBoard) + "人"
        Maxonboard.text =  "定員" + "：" + String(max) + "人"
        Adult.text = "大人" + "：" + String(adlt) + "人"
        child.text = "子供" + "：" + String(Int((Child)*10)/10) + "人"
        Baby.text = "乳幼児" + "：" +  String(bab) + "人"
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
