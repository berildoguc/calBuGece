//
//  ViewController.swift
//  calBuGece
//
//  Created by Beril Doğuç on 25.05.2020.
//  Copyright © 2020 Beril Doğuç. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uyeOl: UIButton!
    @IBOutlet weak var giris: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uyeOl.layer.masksToBounds = true
        uyeOl.layer.cornerRadius = 19
        
        giris.layer.masksToBounds = true
        giris.layer.cornerRadius = 19
    }
}

