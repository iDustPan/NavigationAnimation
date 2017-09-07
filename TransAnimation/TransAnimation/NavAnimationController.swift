//
//  NavAnimationController.swift
//  TransAnimation
//
//  Created by borderx_Pan on 2017/8/11.
//  Copyright © 2017年 borderx_Pan. All rights reserved.
//

import UIKit

class NavAnimationController: NSObject {
    
    let XPAnimationDuration = 0.5
    var opration: UINavigationControllerOperation?

}

extension NavAnimationController: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return self;
    }
}


extension NavAnimationController : UIViewControllerAnimatedTransitioning {
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        let duration = transitionDuration(using: transitionContext)
        
        // 1.Get all view or ViewController that transition needed
        let container = transitionContext.containerView
        guard let fromVC = transitionContext.viewController(forKey: .from) else {
            transitionContext.completeTransition(false)
            return
        }
        guard let toVC = transitionContext.viewController(forKey: .to) else{
            transitionContext.completeTransition(false)
            return
        }
        guard let fromView = fromVC.view ?? transitionContext.view(forKey: .from) else {
            transitionContext.completeTransition(false)
            return
        }
        guard let toView = toVC.view ?? transitionContext.view(forKey: .to) else {
            transitionContext.completeTransition(false)
            return
        }
        // 2.Add those View to container
        container.addSubview(fromView)
        container.addSubview(toView)
        
        // 3.Initialize animation Frame
        let initialFrame = CGRect(x: container.frame.width, y: container.frame.height, width: 0, height: 0)
        
        toView.frame = initialFrame
        
        if opration == .pop {
            fromView.frame = transitionContext.initialFrame(for: fromVC)
            toView.frame = transitionContext.finalFrame(for: toVC)
            container.bringSubview(toFront: fromView)
        }
        
        // 4.Animation
        UIView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: [], animations: {
            
            toView.frame = transitionContext.finalFrame(for: toVC);
            if self.opration == .pop {
                fromView.frame = initialFrame
            }
            
        }) { (success) in
            
            // 5.Tell transitionContext result
            transitionContext.completeTransition(success)
        }
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return XPAnimationDuration
    }
}
