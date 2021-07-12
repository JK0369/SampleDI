//
//  AppDelegate.swift
//  SampleDI
//
//  Created by 김종권 on 2021/07/12.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let appDIContainer = AppDIContainer()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        let aDIContainer = appDIContainer.makeADIContainer()
        let aVC = aDIContainer.makeAViewController()
        window?.rootViewController = aVC
        window?.makeKeyAndVisible()

        return true
    }
}

