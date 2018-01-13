//
//  ViewController.swift
//  Downloading web content
//
//  Created by Sight Syndicate on 2/16/17.
//  Copyright © 2017 Sight Syndicate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        /*
        if let url = URL(string: "https://www.google.com"){
        
        webView.loadRequest(URLRequest(url: url))
            
        }
 
 */
        
        if let url = URL(string: "http://www.sightsyndicate.com"){
            
            let request = NSMutableURLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest){
                data, response, error in
                
                if error != nil {
                    print(error)
                }else{
                    if let unwrappedData = data {
                        
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        
                        print(dataString)
                        
                        DispatchQueue.main.sync(execute: {
                            //Update UI
                        })
                    }
                }
            }
            
            task.resume()
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

