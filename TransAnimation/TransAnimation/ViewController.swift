//
//  ViewController.swift
//  TransAnimation
//
//  Created by borderx_Pan on 2017/8/11.
//  Copyright © 2017年 borderx_Pan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let btn: UIButton = {
       let btn = UIButton(type: UIButtonType.system)
        btn.backgroundColor = UIColor.black;
        btn.setTitle("Click push", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(clickForPush(sender:)), for: .touchUpInside)
        return btn;
    }()
    
    let detailVC = DetailViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        view.addSubview(btn)
        btn.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        btn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        btn.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc private func clickForPush(sender: UIButton) -> Void {
        print("click")
        
        self.navigationController?.pushViewController(detailVC, animated: true);
    }

}

