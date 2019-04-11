//
//  UIKitExtension.swift
//  MGAppStore
//
//  Created by maling on 2019/4/11.
//  Copyright © 2019 maling. All rights reserved.
//

import UIKit

extension UILabel {
    
    convenience public init(text: String?, textColor: UIColor?, font: UIFont?) {
        
        self.init(text: text, textColor: textColor, font: font, frame: CGRect.zero)
    }
    convenience public init(text: String?, textColor: UIColor?, font: UIFont?, frame: CGRect?) {
        self.init()
        
            self.text = text ?? ""
            self.textColor = textColor ?? .black
            self.font = font ?? UIFont.systemFont(ofSize: 14);
            self.frame = frame ?? CGRect.zero
    }
    
    
}

extension UIButton {
    
    convenience public init(title: String, imageName: String) {
        
        self.init(frame: CGRect.zero, title: title, imageName: imageName);
    }
    convenience public init(frame: CGRect, title: String, imageName: String) {
        self.init()
        
        self.frame = frame;
        setTitle(title, for: .normal)
        setImage(UIImage(named: imageName), for: .normal)
    }
}


extension UIView {
    
    var x: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    var y: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    var width: CGFloat {
        
        get {
            return self.frame.size.width
        }
        set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }
    
    var height: CGFloat {
        
        get {
            return self.frame.size.height
        }
        set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    
    var centerX: CGFloat {
        
        get {
            return self.center.x
        }
        set {
            var center = self.center
            center.x = newValue
            self.center = center
        }
    }
    
    var centerY: CGFloat {
        
        get {
            return self.center.y
        }
        set {
            var center = self.center
            center.y = newValue
            self.center = center
        }
    }
    
    var top: CGFloat {
        
        get {
            return self.frame.origin.y
        }
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    var bottom: CGFloat {
        get {
            return self.frame.origin.y + self.frame.size.height
        }
        set {
            var frame = self.frame
            frame.origin.y = newValue - self.frame.size.height
            self.frame = frame
        }
    }
    
    var left: CGFloat {
        
        get {
            return self.frame.origin.x
        }
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    var right: CGFloat {
        
        get {
            return self.frame.origin.x + self.frame.size.width
        }
        set {
            let tempValue = newValue - (self.frame.origin.x + self.frame.size.width)
            var frame = self.frame
            frame.origin.x += tempValue
            self.frame = frame
        }
    }
    
    var size: CGSize {
        
        get {
            return self.frame.size
        }
        set {
            var frame = self.frame
            frame.size = newValue
            self.frame = frame
        }
    }
    
    var origin: CGPoint {
        
        get {
            return self.frame.origin
        }
        set {
            var frame = self.frame
            frame.origin = newValue
            self.frame = frame
        }
    }
    
    
    func cornerRadius(_ radius: CGFloat) {

        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
    
    
}


extension UIColor {
    
    class func randomColor() -> UIColor{
        
        let r = CGFloat(arc4random_uniform(256))
        let g = CGFloat(arc4random_uniform(256))
        let b = CGFloat(arc4random_uniform(256))
        let color = UIColor(red: r, green: g, blue: b, alpha: 1)
        return color
    }
}
