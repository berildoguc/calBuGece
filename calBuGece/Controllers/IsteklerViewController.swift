//
//  IsteklerViewController.swift
//  calBuGece
//
//  Created by Beril Doğuç on 30.05.2020.
//  Copyright © 2020 Beril Doğuç. All rights reserved.
//

import UIKit

class IsteklerViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
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
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(g1))
        view1.addGestureRecognizer(gesture)
        
        let gesture2 = UITapGestureRecognizer(target: self, action: #selector(g2))
        view2.addGestureRecognizer(gesture2)
        
        let gesture3 = UITapGestureRecognizer(target: self, action: #selector(g3))
        view3.addGestureRecognizer(gesture3)
    }
    
    @objc func g1(){
        self.performSegue(withIdentifier: "detay", sender: nil)
    }
    
    @objc func g2(){
        self.performSegue(withIdentifier: "detay", sender: nil)
    }
    
    @objc func g3(){
        self.performSegue(withIdentifier: "detay", sender: nil)
    }

}
