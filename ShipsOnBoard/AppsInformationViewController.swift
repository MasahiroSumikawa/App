//
//  AppsInformationViewController.swift
//  ShipsOnBoard
//
//  Created by clark on 2022/11/25.
//

import UIKit
import AudioToolbox

class AppsInformationViewController: UIViewController {

    @IBOutlet weak var Version: UIStackView!
    @IBOutlet weak var Planner: UIStackView!
    @IBOutlet weak var Programmer: UIStackView!
    @IBOutlet weak var Designer: UIStackView!
    @IBOutlet weak var Distributor: UIStackView!
    @IBOutlet weak var Back: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Version.layer.borderWidth = 3.0
        Version.layer.borderColor = UIColor.gray.cgColor
        Version.layer.cornerRadius = 15.0
        
        Planner.layer.borderWidth = 3.0
        Planner.layer.borderColor = UIColor.gray.cgColor
        Planner.layer.cornerRadius = 15.0
        
        Programmer.layer.borderWidth = 3.0
        Programmer.layer.borderColor = UIColor.gray.cgColor
        Programmer.layer.cornerRadius = 15.0
        
        Designer.layer.borderWidth = 3.0
        Designer.layer.borderColor = UIColor.gray.cgColor
        Designer.layer.cornerRadius = 15.0
        
        Distributor.layer.borderWidth = 3.0
        Distributor.layer.borderColor = UIColor.gray.cgColor
        Distributor.layer.cornerRadius = 15.0
        
        Back.layer.borderWidth = 5
        Back.layer.borderColor = UIColor.gray.cgColor
        Back.layer.cornerRadius = 22.5
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        AudioServicesPlaySystemSound(1102)
        self.dismiss(animated: true, completion: nil)
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
