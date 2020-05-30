//
//  istekDetayViewController.swift
//  calBuGece
//
//  Created by Beril Doğuç on 30.05.2020.
//  Copyright © 2020 Beril Doğuç. All rights reserved.
//

import UIKit

class istekDetayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view1.layer.masksToBounds = true
        view1.layer.cornerRadius = 18
        view1.layer.borderWidth = 2
        view1.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
