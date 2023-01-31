//
//  SOSreportViewController.swift
//  ShipsOnBoard
//
//  Created by clark on 2022/10/06.
//

import UIKit
import AudioToolbox

class SOSreportViewController: UIViewController {
    
    @IBOutlet weak var BANinst: UIStackView!
    @IBOutlet weak var sos: UILabel!
    @IBOutlet weak var moshimo110118: UILabel!
    @IBOutlet weak var JapanCoastGuard: UILabel!
    @IBOutlet weak var Police: UILabel!
    @IBOutlet weak var BAN: UILabel!
    @IBOutlet weak var JCG118report: UIButton!
    @IBOutlet weak var Police110report: UIButton!
    @IBOutlet weak var BANreport: UIButton!
    @IBOutlet weak var BANHomePage: UIButton!
    @IBOutlet weak var WhatisBAN: UILabel!
    @IBOutlet weak var BANinstructions: UILabel!
    @IBOutlet weak var ReportStack: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        sos.layer.borderWidth = 7.0
        sos.layer.borderColor = UIColor.red.cgColor
        sos.layer.cornerRadius = 5.0
        moshimo110118.layer.borderWidth = 5.0
        moshimo110118.layer.borderColor = UIColor.orange.cgColor
        moshimo110118.layer.cornerRadius = 5.0
        JCG118report.layer.borderWidth = 5.0
        JCG118report.layer.borderColor = UIColor.gray.cgColor
        JCG118report.layer.cornerRadius = 55
        Police110report.layer.borderWidth = 5.0
        Police110report.layer.borderColor = UIColor.gray.cgColor
        Police110report.layer.cornerRadius = 55
        BANreport.layer.borderWidth = 5.0
        BANreport.layer.borderColor = UIColor.gray.cgColor
        BANreport.layer.cornerRadius = 55
        BANinst.layer.borderWidth = 5.0
        BANinst.layer.borderColor = UIColor.gray.cgColor
        BANinst.layer.cornerRadius = 5.0
        BANHomePage.layer.borderWidth = 5.0
        BANHomePage.layer.borderColor = UIColor.gray.cgColor
        BANHomePage.layer.cornerRadius = 27.5
        JapanCoastGuard.layer.borderWidth = 2.0
        JapanCoastGuard.layer.borderColor = UIColor.gray.cgColor
        JapanCoastGuard.layer.cornerRadius = 7.0
        Police.layer.borderWidth = 2.0
        Police.layer.borderColor = UIColor.gray.cgColor
        Police.layer.cornerRadius = 7.0
        BAN.layer.borderWidth = 2.0
        BAN.layer.borderColor = UIColor.gray.cgColor
        BAN.layer.cornerRadius = 7.0
        // Do any additional setup after loading the view.
    }
    
    @IBAction func report118(_ sender: Any) {
        AudioServicesPlaySystemSound(1521)
        let phoneNumber = "118"
            guard let url = URL(string: "tel://" + phoneNumber) else { return }
            UIApplication.shared.open(url)
    }
    
    @IBAction func report110(_ sender: Any) {
        AudioServicesPlaySystemSound(1521)
        let phoneNumber = "110"
            guard let url = URL(string: "tel://" + phoneNumber) else { return }
            UIApplication.shared.open(url)
    }
    
    @IBAction func reportBAN(_ sender: Any) {
        AudioServicesPlaySystemSound(1521)
        let phoneNumber = "0120-479-499"
            guard let url = URL(string: "tel://" + phoneNumber) else { return }
            UIApplication.shared.open(url)
    }
    
    @IBAction func HomePageofBAN(_ sender: Any) {
        AudioServicesPlaySystemSound(1102)
        let url = URL(string: "https://www.kairekyo.gr.jp/ban/")
        UIApplication.shared.open(url!)
        
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
