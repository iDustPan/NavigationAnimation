//
//  NavigationViewController.swift
//  TransAnimation
//
//  Created by borderx_Pan on 2017/8/11.
//  Copyright © 2017年 borderx_Pan. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {
    
    let animator = NavAnimationController()

    override func viewDidLoad() {
        super.viewDidLoad()


        self.delegate = animator
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        animator.opration = .push
        super.pushViewController(viewController, animated: animated)
    }

    override func popViewController(animated: Bool) -> UIViewController? {
        animator.opration = .pop
        return super.popViewController(animated: animated)
    }

}


