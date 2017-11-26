//
//  DataStore.swift
//  Tracer
//
//  Created by Kelvin Lau on 2017-11-25.
//  Copyright © 2017 Kelvin Lau. All rights reserved.
//

struct DataStore {}

// MARK: - CausesAPI
extension DataStore: CausesAPI {
  
  func getCauses(completion: @escaping ([Cause]) -> ()) {
    completion([
      Cause(title: "#asthma", image: #imageLiteral(resourceName: "asthma"))
      ])
  }
}
