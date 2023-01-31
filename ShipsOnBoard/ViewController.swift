//
//  ViewController.swift
//  ShipsOnBoard
//
//  Created by clark on 2022/09/28.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var BoardPeopleCalcuration: UIButton!
    @IBOutlet weak var AppsAndWebSite: UIButton!
    @IBOutlet weak var SOSContactAndReport: UIButton!
    @IBOutlet weak var GPSLocation: UIButton!
    @IBOutlet weak var Menu: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        BoardPeopleCalcuration.layer.borderWidth = 10.0
        BoardPeopleCalcuration.layer.borderColor = UIColor.lightGray.cgColor
        BoardPeopleCalcuration.layer.cornerRadius = 65
        AppsAndWebSite.layer.borderWidth = 10.0
        AppsAndWebSite.layer.borderColor = UIColor.lightGray.cgColor
        AppsAndWebSite.layer.cornerRadius = 80
        SOSContactAndReport.layer.borderWidth = 10.0
        SOSContactAndReport.layer.borderColor = UIColor.lightGray.cgColor
        SOSContactAndReport.layer.cornerRadius = 65.0
        GPSLocation.layer.borderWidth = 10.0
        GPSLocation.layer.borderColor = UIColor.lightGray.cgColor
        GPSLocation.layer.cornerRadius = 80
        Menu.layer.borderWidth = 5.0
        Menu.layer.borderColor = UIColor.gray.cgColor
        Menu.layer.cornerRadius = 20.0
        
        let attention = self.storyboard?.instantiateViewController(withIdentifier: "attentionVC") as! AttentionViewController
        self.present(attention, animated:true, completion: nil)
        
        // Do any additional setup after loading the view.
    }
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        let userDefaults = UserDefaults.standard
//        let firstLaunchKey = "firstLaunchKey"
//        if userDefaults.bool(forKey: firstLaunchKey){
//            performSegue(withIdentifier: "toFirstOnly", sender: self)
//        }
//    }
    
}
