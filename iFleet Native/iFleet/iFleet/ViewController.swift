//
//  ViewController.swift
//  iFleet
//
//  Created by ULITInterns on 2/22/18.
//  Copyright © 2018 SriLankan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate{

    @IBOutlet weak var webViewFullScreen:UIWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //let webUrl : URL = URL(string: "https://www.google.com")
        let url = URL(string: "https://www.google.com")
        let request = URLRequest(url: url!)
        webViewFullScreen.loadRequest(request)
    }
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("Start Loading")
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("Finished Loading")
    }
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        print(error?.localizedDescription)
    }
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        return true
    }
}

