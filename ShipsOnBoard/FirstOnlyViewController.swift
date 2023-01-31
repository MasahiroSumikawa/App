//
//  FirstOnlyViewController.swift
//  ShipsOnBoard
//
//  Created by clark on 2022/10/29.
//

import UIKit
import MessageUI
import AudioToolbox

class FirstOnlyViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var facebook: UIButton!
    @IBOutlet weak var instagram: UIButton!
    @IBOutlet weak var twitter: UIButton!
    @IBOutlet weak var mail: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        closeButton.layer.borderWidth = 5.0
        closeButton.layer.borderColor = UIColor.gray.cgColor
        closeButton.layer.cornerRadius  = 22.5
        closeButton.imageView?.layer.cornerRadius = 22.5
        facebook.layer.borderWidth = 6.0
        facebook.layer.borderColor = UIColor.lightGray.cgColor
        facebook.layer.cornerRadius  = 22.5
        instagram.layer.borderWidth = 6.0
        instagram.layer.borderColor = UIColor.lightGray.cgColor
        instagram.layer.cornerRadius  = 22.5
        twitter.layer.borderWidth = 6.0
        twitter.layer.borderColor = UIColor.lightGray.cgColor
        twitter.layer.cornerRadius  = 22.5
        mail.layer.borderWidth = 6.0
        mail.layer.borderColor = UIColor.lightGray.cgColor
        mail.layer.cornerRadius  = 22.5
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toHome(_ sender: Any) {
        AudioServicesPlaySystemSound(1102)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func toFacebook(_ sender: Any) {
        let url = URL(string: "https://www.facebook.com/profile.php?id=100048644280439")
        if UIApplication.shared.canOpenURL(url!){
            AudioServicesPlaySystemSound(1102)
            UIApplication.shared.open(url!)
        }else{
            AudioServicesPlaySystemSound(1521)
            let alert = UIAlertController(title: "ERROR", message: "Facebookを開くことができません。", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Facebookアプリをダウンロード", style: .default){ (action) in
                self.dismiss(animated: true, completion: nil)
            }
            let cancel = UIAlertAction(title: "キャンセル", style: .cancel) { (action) in
                self.dismiss(animated: true, completion: nil)
            }
            alert.addAction(ok)
            alert.addAction(cancel)
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func toInstagram(_ sender: Any) {
        let url = URL(string: "https://www.instagram.com/obake_itm")
        if UIApplication.shared.canOpenURL(url!){
            UIApplication.shared.open(url!)
            AudioServicesPlaySystemSound(1102)
        }else{
            AudioServicesPlaySystemSound(1521)
            let alert = UIAlertController(title: "ERROR", message: "Instagramを開くことができません。", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Instagramアプリをダウンロード", style: .default){ (action) in
                self.dismiss(animated: true, completion: nil)
            }
            let cancel = UIAlertAction(title: "キャンセル", style: .cancel) { (action) in
                self.dismiss(animated: true, completion: nil)
            }
            alert.addAction(ok)
            alert.addAction(cancel)
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func toTwitter(_ sender: Any) {
        let url = URL(string: "https://www.twitter.com/plane_itm")
        if UIApplication.shared.canOpenURL(url!){
            AudioServicesPlaySystemSound(1102)
            UIApplication.shared.open(url!)
        }else{
            AudioServicesPlaySystemSound(1521)
            let alert = UIAlertController(title: "ERROR", message: "Twitterを開くことができません。", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Twitterアプリをダウンロード", style: .default){ (action) in
                self.dismiss(animated: true, completion: nil)
            }
            let cancel = UIAlertAction(title: "キャンセル", style: .cancel) { (action) in
                self.dismiss(animated: true, completion: nil)
            }
            alert.addAction(ok)
            alert.addAction(cancel)
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func toMail(_ sender: Any) {
        let url = URL(string: "mailto:iqpxa76174@yahoo.co.jp")
        if(UIApplication.shared.canOpenURL(url!)){
            AudioServicesPlaySystemSound(1102)
            UIApplication.shared.open(url!)
        }else{
            AudioServicesPlaySystemSound(1521)
            let alert = UIAlertController(title: "ERROR", message: "メールアプリが見つかりません。App Storeからメールアプリをダウンロードしてください。", preferredStyle: .alert)
            let ok = UIAlertAction(title: "メールアプリをダウンロード", style: .default){ (action) in
                self.dismiss(animated: true, completion: nil)
            }
            let cancel = UIAlertAction(title: "キャンセル", style: .cancel) { (action) in
                self.dismiss(animated: true, completion: nil)
            }
            alert.addAction(ok)
            alert.addAction(cancel)
            present(alert, animated: true, completion: nil)
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

}
