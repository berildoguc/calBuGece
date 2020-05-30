//
//  AyarlarViewController.swift
//  calBuGece
//
//  Created by Yusuf Akcakoyun on 28.05.2020.
//  Copyright © 2020 Beril Doğuç. All rights reserved.
//

import UIKit
import SwiftMessages

class AyarlarViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var ayarlar: UILabel!
    @IBOutlet weak var sifreDegistir: UILabel!
    @IBOutlet weak var cikisYap: UILabel!
    @IBOutlet weak var hesabiSil: UILabel!
    @IBOutlet weak var karanlikMod: UILabel!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var settings: UIImageView!
    @IBOutlet weak var istek: UIButton!
    //@IBOutlet weak var baseView: UIView!
    
    var isDark = false
    
    func changeUserInterfaceStyle(){
        var userInterfaceStyle = traitCollection.userInterfaceStyle
        if isDark{
            userInterfaceStyle = .dark
        } else {
            userInterfaceStyle = .light
        }
        if userInterfaceStyle == .dark{
            closeButton.setImage(UIImage.init(named: "karanlikmodclose"), for: .normal)
            settings.image = UIImage(named: "karanlikmodayarlar")
            view1.layer.borderColor = UIColor.init(red: 236/255, green: 236/255, blue: 236/255, alpha: 1).cgColor
            view1.backgroundColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1)
            view2.layer.borderColor = UIColor.init(red: 236/255, green: 236/255, blue: 236/255, alpha: 1).cgColor
            view2.backgroundColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1)
            view3.layer.borderColor = UIColor.init(red: 236/255, green: 236/255, blue: 236/255, alpha: 1).cgColor
            view3.backgroundColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1)
            view4.layer.borderColor = UIColor.init(red: 236/255, green: 236/255, blue: 236/255, alpha: 1).cgColor
            view4.backgroundColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1)
            view5.layer.borderColor = UIColor.init(red: 236/255, green: 236/255, blue: 236/255, alpha: 1).cgColor
            ayarlar.textColor = UIColor.init(red: 236/255, green: 236/255, blue: 236/255, alpha: 1)
            sifreDegistir.textColor = UIColor.init(red: 236/255, green: 236/255, blue: 236/255, alpha: 1)
            cikisYap.textColor = UIColor.init(red: 236/255, green: 236/255, blue: 236/255, alpha: 1)
            hesabiSil.textColor = UIColor.init(red: 236/255, green: 236/255, blue: 236/255, alpha: 1)
            karanlikMod.textColor = UIColor.init(red: 236/255, green: 236/255, blue: 236/255, alpha: 1)
            
        } else{
            closeButton.setImage(UIImage.init(named: "next"), for: .normal)
            settings.image = UIImage(named: "settings")
            view1.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
            view1.backgroundColor = UIColor.init(red: 213/255, green: 215/255, blue: 225/255, alpha: 1)
            view2.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
            view2.backgroundColor = UIColor.init(red: 213/255, green: 215/255, blue: 225/255, alpha: 1)
            view3.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
            view3.backgroundColor = UIColor.init(red: 213/255, green: 215/255, blue: 225/255, alpha: 1)
            view4.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
            view4.backgroundColor = UIColor.init(red: 213/255, green: 215/255, blue: 225/255, alpha: 1)
            view5.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
            ayarlar.textColor = .black
            sifreDegistir.textColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1)
            cikisYap.textColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1)
            hesabiSil.textColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1)
            karanlikMod.textColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        changeUserInterfaceStyle()
        
        let id = UserDefaults.standard.string(forKey: "id")
        
        if id == "meyhane"{
            karanlikMod.text = "Playlist Güncelle"
            mySwitch.isHidden = true
            istek.isHidden = false
        } else{
            karanlikMod.text = "Karanlık Mod"
            mySwitch.isHidden = false
            istek.isHidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view1.layer.masksToBounds = true
        view1.layer.cornerRadius = 18
        view1.layer.borderWidth = 2
        view1.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        view2.layer.masksToBounds = true
        view2.layer.cornerRadius = 18
        view2.layer.borderWidth = 2
        view2.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        view3.layer.masksToBounds = true
        view3.layer.cornerRadius = 18
        view3.layer.borderWidth = 2
        view3.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        view4.layer.masksToBounds = true
        view4.layer.cornerRadius = 18
        view4.layer.borderWidth = 2
        view4.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(sifre))
        view1.addGestureRecognizer(gesture)
        
        let cikisGesture = UITapGestureRecognizer(target: self, action: #selector(cikis))
        view2.addGestureRecognizer(cikisGesture)
        
        let silGesture = UITapGestureRecognizer(target: self, action: #selector(sil))
        view3.addGestureRecognizer(silGesture)
        
        let spotifyGesture = UITapGestureRecognizer(target: self, action: #selector(spotify))
        view4.addGestureRecognizer(spotifyGesture)
    }
    
    @objc func sifre(){
        performSegue(withIdentifier: "sifre", sender: nil)
    }
    
    @objc func cikis(){
        var config = SwiftMessages.Config()
        config.duration = .forever
        config.presentationStyle = .center
        config.dimMode = .color(color: .clear, interactive: true)
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureDropShadow()
        view.configureTheme(.warning)
        let iconText = "🤔"
        view.configureContent(title: "Onay,", body: "Çıkış yapmak istediğinize emin misiniz?", iconText: iconText)
        (view.backgroundView as? CornerRoundingView)?.cornerRadius = 18
        view.button?.setTitle("Çıkış", for: .normal)
        SwiftMessages.show(config: config, view: view)
        view.buttonTapHandler = .some({ (UIButton) in
            SwiftMessages.hide(animated: true)
            self.performSegue(withIdentifier: "cikisYap", sender: nil)
        })
    }
    
    @objc func sil(){
        var config = SwiftMessages.Config()
        config.duration = .forever
        config.presentationStyle = .center
        config.dimMode = .color(color: .clear, interactive: true)
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureDropShadow()
        view.configureTheme(.error)
        let iconText = "😱"
        view.configureContent(title: "Onay,", body: "Hesabınızı silmek istediğinize emin misiniz?", iconText: iconText)
        (view.backgroundView as? CornerRoundingView)?.cornerRadius = 18
        view.button?.setTitle("Sil", for: .normal)
        SwiftMessages.show(config: config, view: view)
        view.buttonTapHandler = .some({ (UIButton) in
            SwiftMessages.hide(animated: true)
            self.performSegue(withIdentifier: "sil", sender: nil)
        })
    }
    
    @objc func spotify(){
        if karanlikMod.text == "Playlist Güncelle"{
            self.performSegue(withIdentifier: "guncel", sender: nil)
        }
    }
    
    @IBAction func darkMode(_ sender: UISwitch) {
        //sender.isOn = !sender.isOn
        
        //var userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if sender.isOn{
            self.isDark = true
        } else{
            self.isDark = false
        }
        
        var config = SwiftMessages.Config()
                    config.duration = .forever
                    config.presentationStyle = .center
                    config.dimMode = .color(color: .clear, interactive: true)
                    let view = MessageView.viewFromNib(layout: .cardView)
                    view.configureDropShadow()
                    view.configureTheme(backgroundColor: UIColor.lightGray, foregroundColor: .white)
                    let iconText = "ℹ"
                    view.configureContent(title: "Tema Değişimi", body: "Uygulama temasını değiştirmek için telefonunuzun temasını değiştirmelisiniz", iconText: iconText)
                    (view.backgroundView as? CornerRoundingView)?.cornerRadius = 10
                    view.button?.setTitle("Anladım", for: .normal)
                    SwiftMessages.show(config: config, view: view)
                    view.buttonTapHandler = .some({ (UIButton) in
                        SwiftMessages.hide(animated: true)
                        self.viewWillAppear(true)
                    })
        
        
    }
    
    @IBAction func closeTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
