//
//  UIView+moveSubviewAnimated.swift
//
//  Created by Guy Kaplan on 04/04/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

public extension UIView {
    func animateMove(subview: UIView, to newSuperview: UIView) -> (() -> Void) {
        // Get the location of the view before the move.
        let locationBefore = subview.superview!.convert(subview.center, to: self)
        
        // Send the parent to back so it won't hide the view.
        self.sendSubviewToBack(subview.superview!)
        
        // Move the view to the new view.
        subview.removeFromSuperview()
        newSuperview.addSubview(subview)
        self.layoutIfNeeded()
        
        // Get the location after the move and calculate the deltas.
        let locationAfter = subview.superview!.convert(subview.center, to: self)
        let deltaX = locationAfter.x - locationBefore.x
        let deltaY = locationAfter.y - locationBefore.y
        
        // Make it appear like the view did not changes it's location before the UI updates.
        subview.transform = .init(translationX: -deltaX + subview.transform.tx, y: -deltaY + subview.transform.ty)
        
        // Animate the move to the new location.
        let closureToAnimate = {
            subview.transform = .identity
        }
        
        return closureToAnimate
    }
}

