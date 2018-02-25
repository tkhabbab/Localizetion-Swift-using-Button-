# Localizetion-Swift-using-Button-
In this Project we use English,RU,UK language using button you can change your app language. Your don't need restart your app. This is my client project +

******** How To Do *********

1 .First Add Language String 
2.Create Class L102Language.swift
 Which is mainly Check your current language then it change when you chose diffrent language using button
 let APPLE_LANGUAGE_KEY = "AppleLanguages"

/// L102Language

class L102Language {
    
    /// get current Apple language
    
    class func currentAppleLanguage() -> String{
        
        let userdef = UserDefaults.standard
        
        let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray
        
        let current = langArray.firstObject as! String
        
        return current
        
    }
    
    /// set @lang to be the first in Applelanguages list
    
    class func setAppleLAnguageTo(lang: String) {
        
        let userdef = UserDefaults.standard
        
        userdef.set([lang,currentAppleLanguage()], forKey: APPLE_LANGUAGE_KEY)
        
        userdef.synchronize()
        
    }
}

 
3. Create Class L012Localizer.swift 
 * Whis is mainly work for auto change your language when you chose diffrent language  
4. Call this class into your AppDelegate.swift 
 L102Localizer.DoTheMagic()
 
 5. your button code
 if L102Language.currentAppleLanguage() == "en" {
            L102Language.setAppleLAnguageTo(lang: "ru")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }
        else if L102Language.currentAppleLanguage() == "uk" {
            L102Language.setAppleLAnguageTo(lang: "ru")
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
