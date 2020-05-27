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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()

        emailView.layer.masksToBounds = true
        emailView.layer.cornerRadius = 19
        passView.layer.masksToBounds = true
        passView.layer.cornerRadius = 19
        giris.layer.masksToBounds = true
        giris.layer.cornerRadius = 19
    }

}
