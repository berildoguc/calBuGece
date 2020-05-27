//
//  HomeViewController.swift
//  calBuGece
//
//  Created by Beril Doğuç on 26.05.2020.
//  Copyright © 2020 Beril Doğuç. All rights reserved.
//

import UIKit
import AVFoundation

class HomeViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate {
    
    var video = AVCaptureVideoPreviewLayer()
    var session = AVCaptureSession()
    
    @IBOutlet weak var qrButton: UIButton!
    @IBOutlet weak var qrView: UIView!
    @IBOutlet weak var close: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func qrButtonTapped(_ sender: UIButton) {
        if let inputs = session.inputs as? [AVCaptureDeviceInput] {
            for input in inputs {
                session.removeInput(input)
            }
        }
        if let outputs = session.outputs as? [AVCaptureMetadataOutput] {
            for output in outputs {
                session.removeOutput(output)
            }
        }
        
        dismissKeyboard()
        let captureDevice = AVCaptureDevice.default(for: AVMediaType.video)
        do {
            let input = try! AVCaptureDeviceInput(device: captureDevice!)
            session.addInput(input)
        } catch {
            print("Error")
        }
        
        let output = AVCaptureMetadataOutput()
        session.addOutput(output)
        
        output.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
        output.metadataObjectTypes = [AVMetadataObject.ObjectType.ean13, AVMetadataObject.ObjectType.qr]
        
        video = AVCaptureVideoPreviewLayer(session: session)
        video.frame = qrView.layer.bounds
        qrView.layer.addSublayer(video)
        
        session.startRunning()
        video.isHidden = false
        self.close.isHidden = false
    }
    
    @IBAction func closeTapped(_ sender: UIButton) {
        video.isHidden = true
        session.stopRunning()
        self.close.isHidden = true
    }
//    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
//            if metadataObjects != nil && metadataObjects.count != 0{
//                if let object = metadataObjects[0] as? AVMetadataMachineReadableCodeObject{
//                    if (object.type == AVMetadataObject.ObjectType.qr){
//                    }
//                    video.isHidden = true
//                    session.stopRunning()
//                }
//            }
//        }
}
