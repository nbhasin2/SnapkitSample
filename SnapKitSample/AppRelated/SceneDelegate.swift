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
        // let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        // let mainStoryboardViewController = mainStoryboard.instantiateViewController(withIdentifier: "MainStoryboardViewController")
        window?.rootViewController = SnapkitViewController()
        window?.makeKeyAndVisible()
    }
}

