//
//  GirisViewController.swift
//  calBuGece
//
//  Created by Beril Doğuç on 25.05.2020.
//  Copyright © 2020 Beril Doğuç. All rights reserved.
//

import UIKit

class GirisViewController: UIViewController {

    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passView: UIView!
    @IBOutlet weak var giris: UIButton!
    @IBOutlet var meyhaneLabel: UIView!
    
    var id = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()

        emailView.layer.masksToBounds = true
        emailView.layer.cornerRadius = 19
        passView.layer.masksToBounds = true
        passView.layer.cornerRadius = 19
        giris.layer.masksToBounds = true
        giris.layer.cornerRadius = 19
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(meyhane))
        meyhaneLabel.addGestureRecognizer(gesture)
    }
    
    @objc func meyhane(){
        self.performSegue(withIdentifier: "meyhane", sender: nil)
    }

    @IBAction func closeTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    @IBAction func uyeOl(_ sender: UIButton) {
        self.performSegue(withIdentifier: "kayit", sender: nil)
    }
    
    @IBAction func girisTapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "giris", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? UyeOlViewController
        if segue.identifier == "meyhane" {
            vc?.identifier = "meyhane"
        } else if segue.identifier == "kayit" {
            vc?.identifier = "kayit"
        } else if segue.identifier == "giris"{
            UserDefaults.standard.set(self.id, forKey: "id")
        }
    }
}
