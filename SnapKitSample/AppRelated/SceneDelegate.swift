//
//  SceneDelegate.swift
//  SnapKitSample
//
//  Created by Nishant Bhasin on 2020-05-28.
//  Copyright © 2020 Nishant Bhasin. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        // Toggle between:
        // AnchorConstraintViewController()
        // SnapkitViewController()
        window?.rootViewController = AnchorConstraintViewController()
        window?.makeKeyAndVisible()
    }
}

