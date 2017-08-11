//
//  NavAnimationController.swift
//  TransAnimation
//
//  Created by borderx_Pan on 2017/8/11.
//  Copyright © 2017年 borderx_Pan. All rights reserved.
//

import UIKit

class NavAnimationController: NSObject, UIViewControllerAnimatedTransitioning {
    
    let XPAnimationDuration = 3.5

    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return XPAnimationDuration
    }
}
