//
//  ViewController.swift
//  findonnuri
//
//  Created by sangwu on 2020/04/08.
//  Copyright © 2020 YEPPI. All rights reserved.
//

import UIKit
import NMapsMap
import SnapKit

class TestRootViewController: UIViewController {

    let mapView = NMFMapView()

    let adviewController = ADViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mapView)
        
        addChild(adviewController)
        view.addSubview(adviewController.view)
        adviewController.didMove(toParent: self)
        
        mapView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        adviewController.view.snp.makeConstraints {
            $0.bottom.equalToSuperview().offset(-10)
            $0.leading.equalToSuperview().offset(10)
            $0.trailing.equalToSuperview().offset(-10)
            $0.height.equalTo(60)
        }
    }

}

