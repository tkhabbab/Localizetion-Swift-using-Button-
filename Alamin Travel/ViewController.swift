//
//  ViewController.swift
//  Alamin Travel
//
//  Created by Khabbab on 2/19/18.
//  Copyright © 2018 Khabbab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var btnRU: UIButton!
    @IBOutlet weak var btnEng: UIButton!
    @IBOutlet weak var btnUK: UIButton!

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let call = UIImage(named: "telephone-7")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: call, style: .plain, target: self, action: #selector(telphone))
        do{
        let url = URL(string: "https://www.epower.amadeus.com/alamintravel/#Culture=en-GB")
            webView.loadRequest(URLRequest(url: url!))
        }
        catch{
            print(error.localizedDescription)
        }
        
    }
    
    func telphone(){
        let url:NSURL = URL(string: "TEL://+79151791781")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        
    }
    
    // For RU language
    
    @IBAction func btnru(_ sender: Any) {
        if L102Language.currentAppleLanguage() == "en" {
            L102Language.setAppleLAnguageTo(lang: "ru")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }
        else if L102Language.currentAppleLanguage() == "uk" {
            L102Language.setAppleLAnguageTo(lang: "ru")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }else {
            
            L102Language.setAppleLAnguageTo(lang: "en")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
            
        }
        
        let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
        
        rootviewcontroller.rootViewController = self.storyboard?.instantiateViewController(withIdentifier: "rootnav")
        
        let mainwindow = (UIApplication.shared.delegate?.window!)!
        
        mainwindow.backgroundColor = UIColor(hue: 0.6477, saturation: 0.6314, brightness: 0.6077, alpha: 0.8)
        
        UIView.transition(with: mainwindow, duration: 0.55001, options: .transitionFlipFromRight, animations: { () -> Void in
            
        }) { (finished) -> Void in
            
        }
        let url = URL(string: "https://www.epower.amadeus.com/alamintravel/#Culture=ru-RU")
        self.webView.loadRequest(URLRequest(url: url!))
        
    }
    
     // For English Language
    
    @IBAction func btneng(_ sender: Any) {
        if L102Language.currentAppleLanguage() == "ru" {
            L102Language.setAppleLAnguageTo(lang: "en")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }
        else if L102Language.currentAppleLanguage() == "uk" {
            L102Language.setAppleLAnguageTo(lang: "en")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }
        
        else {
            
            L102Language.setAppleLAnguageTo(lang: "ru")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
            
        }
        
        let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
        
        rootviewcontroller.rootViewController = self.storyboard?.instantiateViewController(withIdentifier: "rootnav")
        
        let mainwindow = (UIApplication.shared.delegate?.window!)!
        
        mainwindow.backgroundColor = UIColor(hue: 0.6477, saturation: 0.6314, brightness: 0.6077, alpha: 0.8)
        
        UIView.transition(with: mainwindow, duration: 0.55001, options: .transitionFlipFromRight, animations: { () -> Void in
            
        }) { (finished) -> Void in
            
        }
        
        
        let url = URL(string: "https://www.epower.amadeus.com/alamintravel/#Culture=en-GB")
        self.webView.loadRequest(URLRequest(url: url!))

    }
    
     // For Ukrainian Language 
    
    @IBAction func btnuk(_ sender: Any) {
        
        if L102Language.currentAppleLanguage() == "en" {
            L102Language.setAppleLAnguageTo(lang: "uk")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }
        else if L102Language.currentAppleLanguage() == "ru" {
            L102Language.setAppleLAnguageTo(lang: "uk")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }

        else {
            
            L102Language.setAppleLAnguageTo(lang: "en")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
            
        }
        
        let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
        
        rootviewcontroller.rootViewController = self.storyboard?.instantiateViewController(withIdentifier: "rootnav")
        
        let mainwindow = (UIApplication.shared.delegate?.window!)!
        
        mainwindow.backgroundColor = UIColor(hue: 0.6477, saturation: 0.6314, brightness: 0.6077, alpha: 0.8)
        
        UIView.transition(with: mainwindow, duration: 0.55001, options: .transitionFlipFromRight, animations: { () -> Void in
            
        }) { (finished) -> Void in
            
        }
      
        let url = URL(string: "https://www.epower.amadeus.com/alamintravel/#Culture=ru-RU")
        self.webView.loadRequest(URLRequest(url: url!))
    }
    
    
    func checkinternet(){
        
        
        
    }
    
    
    
    
//    
//    @IBAction func lanalart(_ sender: Any) {
//        let alarts = UIAlertController(title: "Enter Language", message: "What Langauge You Want", preferredStyle: .alert)
//        let english = UIAlertAction(title: "English", style: .default) { (action) in
//            
//            let url = URL(string: "https://www.epower.amadeus.com/alamintravel/#Culture=en-GB")
//            self.webView.loadRequest(URLRequest(url: url!))
//            
//            
//            print("English")
//        }
//        let UK = UIAlertAction(title: "Ukraine", style: .default) { (action) in
//            let url = URL(string: "https://www.epower.amadeus.com/alamintravel/#Culture=ru-RU")
//            self.webView.loadRequest(URLRequest(url: url!))
//
//        }
//        let ru = UIAlertAction(title: "Русский", style: .default) { (action) in
//            print("Русский")
//        }
//        alarts.addAction(english)
//        alarts.addAction(UK)
//        alarts.addAction(ru)
//        self.present(alarts, animated: true, completion: nil)
//        
//
//    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

