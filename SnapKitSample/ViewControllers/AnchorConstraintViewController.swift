//
//  AnchorConstraintViewController.swift
//  MVCSplit
//
//  Created by Nishant Bhasin on 2020-05-29.
//  Copyright © 2020 Nishant Bhasin. All rights reserved.
//

import Foundation
import UIKit

class AnchorConstraintViewController: BaseConstraintViewController {
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
        topLabel.text = "AnchorConstraintViewController"
        
        // Add all the views
        view.addSubview(topLabel)
        view.addSubview(middleImageView)
        view.addSubview(bottomButton)
        
        /// Constraints
        // When creating views programatically the system automatically
        // creates a set of constraints based on the view’s
        // frame and its autoresizing mask. Since we want to assign our
        // own constraints for the views hence setting
        // translatesAutoresizingMaskIntoConstraints value as false.
        // Otherwise if we want to deal with frames then we don't need to
        // set it as false
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        middleImageView.translatesAutoresizingMaskIntoConstraints = false
        bottomButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // Top
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            topLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 40),
            
            // Middle
            middleImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            middleImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            middleImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            middleImageView.heightAnchor.constraint(equalToConstant: 400),
            
            // Bottom
            bottomButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            bottomButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            bottomButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            bottomButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
