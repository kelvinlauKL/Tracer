//
//  Theme.swift
//  Tracer
//
//  Created by Kelvin Lau on 2017-11-25.
//  Copyright © 2017 Kelvin Lau. All rights reserved.
//

import UIKit

enum Theme {
  
  private static let navigationBarColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
  
  static func apply() {
    UINavigationBar.appearance().barTintColor = navigationBarColor
    UINavigationBar.appearance().titleTextAttributes = [
      .font: UIFont(name: "Helvetica Neue", size: 17)!,
      .foregroundColor: UIColor.white
    ]
  }
}
