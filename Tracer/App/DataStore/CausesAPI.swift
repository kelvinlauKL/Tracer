//
//  CausesAPI.swift
//  Tracer
//
//  Created by Kelvin Lau on 2017-11-25.
//  Copyright © 2017 Kelvin Lau. All rights reserved.
//

protocol CausesAPI {
  func getCauses(completion: @escaping ([Cause]) -> ()) 
}
