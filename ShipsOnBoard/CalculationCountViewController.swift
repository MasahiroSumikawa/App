//
//  CalculationCountViewController.swift
//  ShipsOnBoard
//
//  Created by clark on 2022/10/05.
//

import UIKit

class CalculationCountViewController: UIViewController {

    @IBOutlet weak var calculation: UIStackView!
    @IBOutlet weak var attention: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        calculation.layer.borderWidth = 5.0
        calculation.layer.borderColor = UIColor.white.cgColor
        calculation.layer.cornerRadius = 7.0
        attention.layer.borderWidth = 5.0
        attention.layer.borderColor = UIColor.orange.cgColor
        attention.layer.cornerRadius = 7.0

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
