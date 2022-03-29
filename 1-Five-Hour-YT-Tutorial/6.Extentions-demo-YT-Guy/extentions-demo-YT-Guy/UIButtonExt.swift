//
//  UIButtonExt.swift
//  extentions-demo-YT-Guy
//
//  Created by Anastasija on 22.3.22..
//

import UIKit
//razdvojiti po fajlovima
extension UIButton{
    
    func wiggle() {
        
        let wiggleAnim = CABasicAnimation(keyPath: "position")
        wiggleAnim.duration = 0.05
        wiggleAnim.repeatCount = 5
        wiggleAnim.autoreverses = true //make it reverse in the oposite way
        wiggleAnim.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y)
        wiggleAnim.toValue = CGPoint(x:self.center.x + 4.0, y: self.center.y)
        layer.add(wiggleAnim, forKey: "position") //to add the animation to the button

    }
    
    func dim() {
        UIView.animate(withDuration: 0.15, animations: {
            self.alpha = 0.75
        }) {(finished) in
            UIView.animate(withDuration: 0.15, animations: {
                self.alpha = 1.0
            })
        }
    }
    
    func colorize() {
        if (self.tintColor == .red)
        {
            self.tintColor = .blue
        } else {
            self.tintColor = .red
        }
    }
}
