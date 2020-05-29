
//
//  UyeOlViewController.swift
//  calBuGece
//
//  Created by Beril Doğuç on 25.05.2020.
//  Copyright © 2020 Beril Doğuç. All rights reserved.
//

import UIKit

class UyeOlViewController: UIViewController {

    @IBOutlet weak var uyeOlView: UIView!
    @IBOutlet weak var isimView: UIView!
    @IBOutlet weak var soyadView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var dogumView: UIView!
//    @IBOutlet weak var cinsiyetView: UIView!
    @IBOutlet weak var ileriButton: UIButton!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var isim: UILabel!
    @IBOutlet weak var soyad: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var dogum: UILabel!
    
    var identifier = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        if (self.identifier == "kayit") || (self.identifier == ""){
            isim.text = "İsim"
            soyad.text = "Soyad"
            email.text = "Email"
            dogum.text = "Doğum Tarihi"
        } else if self.identifier == "meyhane" {
            isim.text = "Restorant Adı"
            soyad.text = "Adres"
            email.text = "Telefon"
            dogum.text = "Doğum Tarihi"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()

        uyeOlView.layer.masksToBounds = true
        uyeOlView.layer.cornerRadius = 20
        uyeOlView.layer.borderWidth = 1
        uyeOlView.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        isimView.layer.masksToBounds = true
        isimView.layer.cornerRadius = 20
        isimView.layer.borderWidth = 1
        isimView.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        soyadView.layer.masksToBounds = true
        soyadView.layer.cornerRadius = 20
        soyadView.layer.borderWidth = 1
        soyadView.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        emailView.layer.masksToBounds = true
        emailView.layer.cornerRadius = 20
        emailView.layer.borderWidth = 1
        emailView.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        dogumView.layer.masksToBounds = true
        dogumView.layer.cornerRadius = 20
        dogumView.layer.borderWidth = 1
        dogumView.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
//        cinsiyetView.layer.masksToBounds = true
//        cinsiyetView.layer.cornerRadius = 20
//        cinsiyetView.layer.borderWidth = 1
//        cinsiyetView.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        ileriButton.layer.masksToBounds = true
        ileriButton.layer.cornerRadius = 20
        ileriButton.layer.borderWidth = 1
        ileriButton.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        segment.layer.masksToBounds = true
        segment.layer.cornerRadius = 20
        segment.layer.borderWidth = 1
        segment.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    @IBAction func ileriTapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "ileri", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! UyeOlDevamViewController
        if segue.identifier == "ileri"{
            vc.identifier = self.identifier
        }
    }
    
}
