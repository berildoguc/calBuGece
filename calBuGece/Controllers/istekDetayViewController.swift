//
//  istekDetayViewController.swift
//  calBuGece
//
//  Created by Beril Doğuç on 30.05.2020.
//  Copyright © 2020 Beril Doğuç. All rights reserved.
//

import UIKit
import SwiftMessages

class istekDetayViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var reddet: UIButton!
    @IBOutlet weak var kabulet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view1.layer.masksToBounds = true
        view1.layer.cornerRadius = 18
        view1.layer.borderWidth = 2
        view1.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        view2.layer.masksToBounds = true
        view2.layer.cornerRadius = 18
        view2.layer.borderWidth = 2
        view1.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        view3.layer.masksToBounds = true
        view3.layer.cornerRadius = 18
        view3.layer.borderWidth = 2
        view3.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        view4.layer.masksToBounds = true
        view4.layer.cornerRadius = 18
        view4.layer.borderWidth = 2
        view4.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        view5.layer.masksToBounds = true
        view5.layer.cornerRadius = 18
        view5.layer.borderWidth = 2
        view5.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        reddet.layer.masksToBounds = true
        reddet.layer.cornerRadius = 18
        reddet.layer.borderWidth = 2
        reddet.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        kabulet.layer.masksToBounds = true
        kabulet.layer.cornerRadius = 18
        kabulet.layer.borderWidth = 2
        kabulet.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
    }
    
    @IBAction func kabul(_ sender: UIButton) {
        var config = SwiftMessages.Config()
        config.duration = .seconds(seconds: 2)
        config.presentationStyle = .bottom
        config.dimMode = .color(color: .clear, interactive: true)
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureTheme(.success)
        view.configureDropShadow()
        let iconText = "👍"
        view.configureContent(title: "Onay", body: "İstek onaylanmıştır.", iconText: iconText)
        (view.backgroundView as? CornerRoundingView)?.cornerRadius = 10
        view.button?.isHidden = true
        config.eventListeners.append() { event in
            if case .didHide = event {
                self.dismiss(animated: true)
            }
        }
        SwiftMessages.show(config: config, view: view)
    }
    
    @IBAction func red(_ sender: UIButton) {
        var config = SwiftMessages.Config()
        config.duration = .seconds(seconds: 2)
        config.presentationStyle = .bottom
        config.dimMode = .color(color: .clear, interactive: true)
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureTheme(.info)
        view.configureDropShadow()
        let iconText = "❌"
        view.configureContent(title: "Ret", body: "İstek reddedilmiştir.", iconText: iconText)
        (view.backgroundView as? CornerRoundingView)?.cornerRadius = 10
        view.button?.isHidden = true
        config.eventListeners.append() { event in
            if case .didHide = event {
                self.dismiss(animated: true)
            }
        }
        SwiftMessages.show(config: config, view: view)
    }
    
    @IBAction func close(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
