//
//  SifreDegistirViewController.swift
//  calBuGece
//
//  Created by Yusuf Akcakoyun on 28.05.2020.
//  Copyright © 2020 Beril Doğuç. All rights reserved.
//

import UIKit
import SwiftMessages

class SifreDegistirViewController: UIViewController {

    @IBOutlet weak var mevcutView: UIView!
    @IBOutlet weak var yeniSifre: UIView!
    @IBOutlet weak var tekrar: UIView!
    @IBOutlet weak var bitir: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        mevcutView.layer.masksToBounds = true
        mevcutView.layer.cornerRadius = 18
        mevcutView.layer.borderWidth = 1
        mevcutView.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        yeniSifre.layer.masksToBounds = true
        yeniSifre.layer.cornerRadius = 18
        yeniSifre.layer.borderWidth = 1
        yeniSifre.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        tekrar.layer.masksToBounds = true
        tekrar.layer.cornerRadius = 18
        tekrar.layer.borderWidth = 1
        tekrar.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        bitir.layer.masksToBounds = true
        bitir.layer.cornerRadius = 18
        bitir.layer.borderWidth = 1
        bitir.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
    }
    
    @IBAction func bitirTapped(_ sender: UIButton) {
        var config = SwiftMessages.Config()
        config.duration = .seconds(seconds: 1)
        config.presentationStyle = .bottom
        config.dimMode = .color(color: .clear, interactive: true)
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureTheme(.success)
        view.configureDropShadow()
        let iconText = "🔑"
        view.configureContent(title: "Başarılı", body: "Şifreniz değiştirilmiştir.", iconText: iconText)
        (view.backgroundView as? CornerRoundingView)?.cornerRadius = 10
        view.button?.isHidden = true
        config.eventListeners.append() { event in
            if case .didHide = event {
                self.dismiss(animated: true)
            }
        }
        SwiftMessages.show(config: config, view: view)
    }

}
