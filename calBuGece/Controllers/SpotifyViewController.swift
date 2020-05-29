//
//  SpotifyViewController.swift
//  calBuGece
//
//  Created by Yusuf Akcakoyun on 29.05.2020.
//  Copyright © 2020 Beril Doğuç. All rights reserved.
//

import UIKit
import WebKit

class SpotifyViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    //@IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var web: UIView!
    
    var webView : WKWebView!
    
    /*override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: CGRect( x: 0, y: 20, width: self.view.frame.width, height: self.view.frame.height - 20 ), configuration: webConfiguration)
        self.view.addSubview(webView)
        webView.uiDelegate = self
        self.webView.allowsBackForwardNavigationGestures = true
        //web = webView
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: CGRect( x: 0, y: 0, width: self.web.frame.width - 35, height: self.web.frame.height - 20 ), configuration: webConfiguration)
        self.web.addSubview(webView)
        //webView.uiDelegate = self
        self.webView.allowsBackForwardNavigationGestures = true
        
        let myUrl = URL(string:"https://www.spotify.com/tr/")!
        let request = URLRequest(url: myUrl)
        webView.load(request)
        
    }
    

    /*func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if navigationAction.navigationType == .linkActivated  {
            if let url = navigationAction.request.url,
                let host = url.host, !host.hasPrefix("https://www.spotify.com/tr/"),
                UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url)
                print(url)
                print("Redirected to browser. No need to open it locally")
                decisionHandler(.cancel)
            } else {
                print("Open it locally")
                decisionHandler(.allow)
            }
        } else {
            print("not a user click")
            decisionHandler(.allow)
        }
    }*/
    @IBAction func closeTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
