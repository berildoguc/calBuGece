//
//  UyeOlDevamViewController.swift
//  calBuGece
//
//  Created by Beril Doğuç on 26.05.2020.
//  Copyright © 2020 Beril Doğuç. All rights reserved.
//

import UIKit
import M13Checkbox

class UyeOlDevamViewController: UIViewController {

    @IBOutlet weak var uyeOlView: UIView!
    @IBOutlet weak var kullaniciAdiView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ileributton2: UIButton!
    @IBOutlet weak var checkbox: M13Checkbox!
    
    var selectedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        
        uyeOlView.layer.masksToBounds = true
        uyeOlView.layer.cornerRadius = 21
        uyeOlView.layer.borderWidth = 1
        uyeOlView.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor

        kullaniciAdiView.layer.masksToBounds = true
        kullaniciAdiView.layer.cornerRadius = 21
        kullaniciAdiView.layer.borderWidth = 1
        kullaniciAdiView.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        passwordView.layer.masksToBounds = true
        passwordView.layer.cornerRadius = 21
        passwordView.layer.borderWidth = 1
        passwordView.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor
        
        ileributton2.layer.masksToBounds = true
        ileributton2.layer.cornerRadius = 21
        ileributton2.layer.borderWidth = 1
        ileributton2.layer.borderColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 1).cgColor

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleSelectProfileView))
        imageView.addGestureRecognizer(tapGesture)
        imageView.isUserInteractionEnabled = true
        
        checkbox.boxType = .square
        checkbox.stateChangeAnimation = .spiral
        checkbox.animationDuration = 0.5
    }
    
    @objc func handleSelectProfileView() {
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.sourceType = UIImagePickerController.SourceType.photoLibrary

        self.present(pickerController, animated: true)
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}

 //MARK: Extension
extension UyeOlDevamViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @objc func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info["UIImagePickerControllerOriginalImage"] as? UIImage{
            selectedImage = image
            imageView.image = image
        }
        dismiss(animated: true, completion: nil)
    }
}
