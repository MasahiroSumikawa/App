//
//  menuViewController.swift
//  ShipsOnBoard
//
//  Created by clark on 2022/11/25.
//

import UIKit
import AudioToolbox

class menuViewController: UIViewController {
    
    @IBOutlet weak var attention: UIButton!
    @IBOutlet weak var contact: UIButton!
    @IBOutlet weak var appsinfo: UIButton!
    @IBOutlet weak var back: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        back.layer.borderWidth = 5.0
        back.layer.borderColor = UIColor.gray.cgColor
        back.layer.cornerRadius = 22.5
        back.imageView?.layer.cornerRadius = 22.5
        attention.layer.borderWidth = 6.0
        attention.layer.borderColor = UIColor.lightGray.cgColor
        attention.layer.cornerRadius  = 40
        contact.layer.borderWidth = 6.0
        contact.layer.borderColor = UIColor.lightGray.cgColor
        contact.layer.cornerRadius  = 40
        appsinfo.layer.borderWidth = 6.0
        appsinfo.layer.borderColor = UIColor.lightGray.cgColor
        appsinfo.layer.cornerRadius  = 40
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Back(_ sender: Any) {
        AudioServicesPlaySystemSound(1102)
        self.dismiss(animated: true, completion: nil)
    }
    /*
     @IBAction func Contact(_ sender: Any) {
     }
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
