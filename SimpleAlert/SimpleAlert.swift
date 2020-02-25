//
//  SimpleAlert.swift
//  SimpleAlert
//
//  Created by Shota Shimazu on 2020/02/15.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import UIKit



class SimpleDialogController: UIPresentationController {
    
    private let overlayView = UIView()

}

class SimpleDialog {

    
    static func confirm(message: String) -> UIAlertController {
        return self.show(title: "Confirm", message: message)
    }
    
    static func show(title: String, message: String) -> UIAlertController {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: UIAlertController.Style.alert
        )
        
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{
            (action: UIAlertAction!) -> Void in
        })
        
        alert.addAction(defaultAction)

        return alert
    }
}



@available(iOS, introduced: 10.0, deprecated: 12.0, renamed: "SimpleDialog")
open class SimpleAlert {
    
    var title: String!
    var message: String!
    
    
    public func title(_ t: String) {
        self.title = t
    }
    
    public func show() {
        let alert: UIAlertController = UIAlertController(title: self.title, message: self.message, preferredStyle:  UIAlertController.Style.alert)
        
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{
            (action: UIAlertAction!) -> Void in
        })
        
        alert.addAction(defaultAction)
        
        UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    
    static public func confirm(message: String) {
        
        let alert: UIAlertController = UIAlertController(title: message, message: "", preferredStyle:  UIAlertController.Style.alert)
        
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{
            (action: UIAlertAction!) -> Void in
        })
        
        alert.addAction(defaultAction)
        
        
        
        // - UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
        
        
        
        UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
    }
}
