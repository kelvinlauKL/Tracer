//
//  AppDelegate.swift
//  Tracer
//
//  Created by Kelvin Lau on 2017-11-25.
//  Copyright © 2017 Kelvin Lau. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder {

    var window: UIWindow?
}

// MARK: - UIApplicationDelegate
extension AppDelegate: UIApplicationDelegate {
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)
    let naviVC = UINavigationController(rootViewController: CausesListViewController.instantiate(with: DataStore()))
    window?.rootViewController = naviVC
    window?.makeKeyAndVisible()
    
    // apply appearance proxies
    Theme.apply()
    
    return true
  }
}
