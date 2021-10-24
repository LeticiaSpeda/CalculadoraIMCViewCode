//
//  SceneDelegate.swift
//  IMCCalculadora
//
//  Created by Paolo Prodossimo Lopes on 24/10/21.
//  Copyright © 2021 Leticia de Oliveira Speda. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        window?.rootViewController = ViewController()
    }

}

