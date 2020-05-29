//
//  SnapkitViewController.swift
//  MVCSplit
//
//  Created by Nishant Bhasin on 2020-05-29.
//  Copyright © 2020 Nishant Bhasin. All rights reserved.
//

import Foundation
import SnapKit
import UIKit

class SnapkitViewController: BaseConstraintViewController {
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // Setup
    private func setup() {
        // Background colour
        view.backgroundColor = .systemBackground
        
        // Just to see which view controller you are opening 
        topLabel.text = "SnapkitViewController"
        
        // Add all the views
        view.addSubview(topLabel)
        view.addSubview(middleImageView)
        view.addSubview(bottomButton)
        
        // Constraints
        
        // Lays on top with paddig equal to 10
        // and left and right equal to superview and height equal to 40
        // Left -> leading
        // Right -> trailing
        topLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(40)
        }
        
        middleImageView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(400)
        }
        
        bottomButton.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(10)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20) // or inset(20)
            make.height.equalTo(50)
        }
    }
}
