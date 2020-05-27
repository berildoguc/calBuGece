//
//  PeopleViewController.swift
//  calBuGece
//
//  Created by Beril Doğuç on 26.05.2020.
//  Copyright © 2020 Beril Doğuç. All rights reserved.
//

import UIKit

class PeopleViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    
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
        
        view5.layer.masksToBounds = true
        view5.layer.cornerRadius = 18
        view5.layer.borderWidth = 2
        view5.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
    }

}
