//
//  ADViewController.swift
//  findonnuri
//
//  Created by sangwu on 2020/04/08.
//  Copyright © 2020 YEPPI. All rights reserved.
//

import Foundation
import UIKit
import GoogleMobileAds
import SnapKit

class ADViewController: UIViewController {
    
    var bannerView = GADBannerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Google Mobile Ads SDK version: \(GADRequest.sdkVersion())")
        
        self.view.addSubview(bannerView)
        bannerView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        //TODO: 테스트를 위한 임시 adUnitID 값 세팅, 실사용 값으로 세팅 필요
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
    }
    
}
