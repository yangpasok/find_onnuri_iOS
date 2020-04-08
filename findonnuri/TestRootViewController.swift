//
//  ViewController.swift
//  findonnuri
//
//  Created by sangwu on 2020/04/08.
//  Copyright © 2020 YEPPI. All rights reserved.
//

import UIKit
import SnapKit

class TestRootViewController: UIViewController {

    let adviewController = ADViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        
        addChild(adviewController)
        self.view.addSubview(adviewController.view)
        adviewController.didMove(toParent: self)
        
        adviewController.view.snp.makeConstraints {
            $0.bottom.equalToSuperview().offset(-10)
            $0.leading.equalToSuperview().offset(10)
            $0.trailing.equalToSuperview().offset(-10)
            $0.height.equalTo(60)
        }
    }

}

