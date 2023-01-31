//
//  AttentionViewController.swift
//  ShipsOnBoard
//
//  Created by clark on 2022/11/09.
//

import UIKit
import AudioToolbox

class AttentionViewController: UIViewController {

    @IBOutlet weak var OKButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        OKButton.layer.borderWidth = 5
        OKButton.layer.borderColor = UIColor.gray.cgColor
        OKButton.layer.cornerRadius = 22.5
        let FirstOnly = self.storyboard?.instantiateViewController(withIdentifier: "FirstOnly") as! FirstOnlyViewController
        self.present(FirstOnly, animated:true, completion: nil)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTappedOKButton(_ sender: Any) {
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
