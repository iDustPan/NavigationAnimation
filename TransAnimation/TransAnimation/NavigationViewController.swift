//
//  NavigationViewController.swift
//  TransAnimation
//
//  Created by borderx_Pan on 2017/8/11.
//  Copyright © 2017年 borderx_Pan. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()


        
    }
    
    private func addScreenPanGestureRecognizers() -> Void {
        let screenEdgeGesture = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(handlePanGestureRecognizer))
        screenEdgeGesture.edges = .left
        view.addGestureRecognizer(screenEdgeGesture)
    }
    
    @objc private func handlePanGestureRecognizer(gesture: UIScreenEdgePanGestureRecognizer) -> Void {
        
    }

}

extension NavigationViewController: UINavigationControllerDelegate {
    
//    func navigationController(_ navigationController: UINavigationController, interactionControllerFor animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
//        
//    }
}
