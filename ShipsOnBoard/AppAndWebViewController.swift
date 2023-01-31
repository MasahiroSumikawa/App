//
//  AppAndWebViewController.swift
//  ShipsOnBoard
//
//  Created by clark on 2022/10/11.
//

import UIKit

class AppAndWebViewController: UIViewController {
    
    @IBOutlet weak var NewPecSmart: UIButton!
    @IBOutlet weak var ShipsKoutsuAnzenJouhou: UIButton!
    @IBOutlet weak var JCGKaijouAnzenJouhou: UIButton!
    @IBOutlet weak var JCGKishouGenkyou: UIButton!
    @IBOutlet weak var JCGKaijouKeihou: UIButton!
    @IBOutlet weak var JCGKinkyuJouhou: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NewPecSmart.layer.borderWidth = 7.0
        NewPecSmart.layer.borderColor = UIColor.gray.cgColor
        NewPecSmart.layer.cornerRadius = 75
        ShipsKoutsuAnzenJouhou.layer.borderWidth = 7.0
        ShipsKoutsuAnzenJouhou.layer.borderColor = UIColor.gray.cgColor
        ShipsKoutsuAnzenJouhou.layer.cornerRadius = 75
        JCGKaijouAnzenJouhou.layer.borderWidth = 7.0
        JCGKaijouAnzenJouhou.layer.borderColor = UIColor.gray.cgColor
        JCGKaijouAnzenJouhou.layer.cornerRadius = 75
        JCGKishouGenkyou.layer.borderWidth = 7.0
        JCGKishouGenkyou.layer.borderColor = UIColor.gray.cgColor
        JCGKishouGenkyou.layer.cornerRadius = 75
        JCGKaijouKeihou.layer.borderWidth = 7.0
        JCGKaijouKeihou.layer.borderColor = UIColor.gray.cgColor
        JCGKaijouKeihou.layer.cornerRadius = 70
        JCGKinkyuJouhou.layer.borderWidth = 7.0
        JCGKinkyuJouhou.layer.borderColor = UIColor.gray.cgColor
        JCGKinkyuJouhou.layer.cornerRadius = 75

        // Do any additional setup after loading the view.
    }
    
    @IBAction func NewPecAppOpen(_ sender: Any) {
        if let url = URL(string: "https://apps.apple.com/app/id1345808547"){
            UIApplication.shared.open(url)
        }
    }
    @IBAction func KotsuAnzenJoho(_ sender: Any) {
        let url = URL(string: "https://www1.kaiho.mlit.go.jp/TUHO/tuho2.html")
        UIApplication.shared.open(url!)
    }
    @IBAction func KaijoAnzenJoho(_ sender: Any) {
        let url = URL(string: "https://www6.kaiho.mlit.go.jp/anzen.html")
        UIApplication.shared.open(url!)
    }
    @IBAction func KishoGenkyo(_ sender: Any) {
        let url = URL(string: "https://www6.kaiho.mlit.go.jp/kisyou.html")
        UIApplication.shared.open(url!)
    }
    @IBAction func KaijoKeiho(_ sender: Any) {
        let url = URL(string: "https://www6.kaiho.mlit.go.jp/keihou_chuihou.html")
        UIApplication.shared.open(url!)
    }
    @IBAction func KinkyuJoho(_ sender: Any) {
        let url = URL(string: "https://www6.kaiho.mlit.go.jp/kinkyu.html")
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
