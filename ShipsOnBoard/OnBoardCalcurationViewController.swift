//
//  OnBoardCalcurationViewController.swift
//  ShipsOnBoard
//
//  Created by clark on 2022/09/28.
//

import UIKit
import AudioToolbox

class OnBoardCalcurationViewController: UIViewController {

    @IBOutlet weak var MaxOnBoards: UITextField!
    @IBOutlet weak var Adults: UITextField!
    @IBOutlet weak var Children: UITextField!
    @IBOutlet weak var Babies: UITextField!
    @IBOutlet weak var Calcuration: UIButton!
    @IBOutlet weak var HowtoCalcuration: UIButton!
//    @IBOutlet var CloseKeyBoard: UITapGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        MaxOnBoards.layer.borderWidth = 5.0
        MaxOnBoards.layer.borderColor = UIColor.gray.cgColor
        MaxOnBoards.layer.cornerRadius = 7.0
        Adults.layer.borderWidth = 5.0
        Adults.layer.borderColor = UIColor.gray.cgColor
        Adults.layer.cornerRadius = 7.0
        Children.layer.borderWidth = 5.0
        Children.layer.borderColor = UIColor.gray.cgColor
        Children.layer.cornerRadius = 7.0
        Babies.layer.borderWidth = 5.0
        Babies.layer.borderColor = UIColor.gray.cgColor
        Babies.layer.cornerRadius = 7.0
        Calcuration.layer.borderWidth = 8.0
        Calcuration.layer.borderColor = UIColor.lightGray.cgColor
        Calcuration.layer.cornerRadius = 43.0
        HowtoCalcuration.layer.borderWidth = 5.0
        HowtoCalcuration.layer.borderColor = UIColor.gray.cgColor
        HowtoCalcuration.layer.cornerRadius = 25
        // Do any additional setup after loading the view.
    }
    
//    @IBAction func closekeyboard(_ sender: UITapGestureRecognizer) {
//        view.endEditing(true)
//    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNext" {
        if MaxOnBoards.text == "" || Adults.text == "" || Children.text == "" || Babies.text == "" {
            Calcuration.layer.borderColor = UIColor.red.cgColor
            let alert = UIAlertController(title: "ERROR", message: "すべての項目に値を入力してください。", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default) { (action) in
                self.dismiss(animated: true, completion: nil)
            }
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            AudioServicesPlaySystemSound(1521)
            if MaxOnBoards.text == "" {
                MaxOnBoards.layer.borderColor = UIColor.red.cgColor
            }else{
                MaxOnBoards.layer.borderColor = UIColor.green.cgColor
            }
            
            if Adults.text == "" {
                Adults.layer.borderColor = UIColor.red.cgColor
            }else{
                Adults.layer.borderColor = UIColor.green.cgColor
            }
            
            if Children.text == "" {
                Children.layer.borderColor = UIColor.red.cgColor
            }else{
                Children.layer.borderColor = UIColor.green.cgColor
            }
            
            if Babies.text == "" {
                Babies.layer.borderColor = UIColor.red.cgColor
            }else{
                Babies.layer.borderColor = UIColor.green.cgColor
            }
        }else if Float(MaxOnBoards.text!)! > 100 || Float(Adults.text!)! > 100 || Float(Children.text!)! > 100 || Float(Babies.text!)! > 100 {
            let alert = UIAlertController(title: "ERROR", message: "乗船人数が多すぎます。人数を減らしてください。", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default) { (action) in
                self.dismiss(animated: true, completion: nil)
            }
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            AudioServicesPlaySystemSound(1521)
            if Float(MaxOnBoards.text!)! > 100 {
                MaxOnBoards.layer.borderColor = UIColor.red.cgColor
            }else{
                MaxOnBoards.layer.borderColor = UIColor.green.cgColor
            }
            if Float(Adults.text!)! > 100 {
                Adults.layer.borderColor = UIColor.red.cgColor
            }else{
                Adults.layer.borderColor = UIColor.green.cgColor
            }
            if Float(Children.text!)! > 100 {
                Children.layer.borderColor = UIColor.red.cgColor
            }else{
                Children.layer.borderColor = UIColor.green.cgColor
            }
            if Float(Babies.text!)! > 100 {
                Babies.layer.borderColor = UIColor.red.cgColor
            }else{
                Babies.layer.borderColor = UIColor.green.cgColor
            }
        }else{
            
            Calcuration.layer.borderColor = UIColor.green.cgColor
            MaxOnBoards.layer.borderColor = UIColor.green.cgColor
            Adults.layer.borderColor = UIColor.green.cgColor
            Children.layer.borderColor = UIColor.green.cgColor
            Babies.layer.borderColor = UIColor.green.cgColor
            AudioServicesPlaySystemSound(1102)
            let nextView = segue.destination as! Next_ResultViewController
            nextView.max = MaxOnBoards.text!
            nextView.adlt = Adults.text!
            nextView.cld = Children.text!
            nextView.bab = Babies.text!
            
            
            
//            self.present(Next_ResultViewController, animated: true)
            }
        }
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
