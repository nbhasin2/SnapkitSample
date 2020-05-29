//
//  BaseViewController.swift
//  MVCSplit
//
//  Created by Nishant Bhasin on 2020-05-28.
//  Copyright © 2020 Nishant Bhasin. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

/* The layout for view controller
 
|----------------|
|     Title      | [Top View]
|                |
|----------------|
|                |
|                |
|  Description   | [Middle View]
|                |
|                |
|----------------|
|                |
|  [Sample Btn]  | [Bottom View]
|----------------|

*/

class BaseViewController: UIViewController{
    // MARK: Views
    // Top label stored properly initialized with a closure
    // is done only once but you can later change its values
    var topLabel: UILabel = {
        let label = UILabel()
        label.text = "Sample Label"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.textAlignment = .center
        label.numberOfLines = 1
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    var middleImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Image"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    var bottomButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sample Button", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .systemBlue
        return button
    }()
}
