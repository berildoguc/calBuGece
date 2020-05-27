//
//  SifremiUnuttumViewController.swift
//  calBuGece
//
//  Created by Beril Doğuç on 26.05.2020.
//  Copyright © 2020 Beril Doğuç. All rights reserved.
//

import UIKit
import SwiftMessages

class SifremiUnuttumViewController: UIViewController {

    @IBOutlet weak var uyeOlView: UIView!
    @IBOutlet weak var gonderButton: UIButton!
    @IBOutlet weak var kullaniciAdiView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uyeOlView.layer.masksToBounds = true
        uyeOlView.layer.cornerRadius = 21
        uyeOlView.layer.borderWidth = 1
        uyeOlView.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        kullaniciAdiView.layer.masksToBounds = true
        kullaniciAdiView.layer.cornerRadius = 21
        kullaniciAdiView.layer.borderWidth = 1
        kullaniciAdiView.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor

        gonderButton.layer.masksToBounds = true
        gonderButton.layer.cornerRadius = 20
        gonderButton.layer.borderWidth = 1
        gonderButton.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
    }
    
    @IBAction func gonderButtonTapped(_ sender: UIButton) {
        var config = SwiftMessages.Config()
        config.duration = .seconds(seconds: 1)
        config.presentationStyle = .bottom
        config.dimMode = .color(color: .clear, interactive: true)
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureTheme(.success)
        view.configureDropShadow()
        let iconText = "📩"
        view.configureContent(title: "Başarılı", body: "Şifre sıfırlama talebiniz e-posta adresinize gönderilmiştir.", iconText: iconText)
        (view.backgroundView as? CornerRoundingView)?.cornerRadius = 10
        view.button?.isHidden = true
        config.eventListeners.append() { event in
            if case .didHide = event {
                self.dismiss(animated: true)
            }
        }
        SwiftMessages.show(config: config, view: view)
    }
    @IBAction func closeButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
