//
//  SimpleAlert.swift
//  SimpleAlert
//
//  Created by Shota Shimazu on 2020/02/15.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import UIKit



open class SimpleAlert {
    
    var title: String?
    
    var message: String?
}


protocol Buildable {
    associatedtype BuildType
 
    func show() -> SimpleAlert
}


class Builder: Buildable {

    private var title: String?
    
    private var message: String?
    
    func title(_ title: String) -> Self {
        self.title = title
        return self
    }
    
    func message(_ message: String) -> Self {
        self.message = message
        return self
    }

    typealias BuildType = SimpleAlert
    
    func show() -> SimpleAlert {
        let alert = SimpleAlert()
        
        
        return alert
    }
}
