//
//  CauseDetailViewController.swift
//  Tracer
//
//  Created by Kelvin Lau on 2017-11-25.
//  Copyright © 2017 Kelvin Lau. All rights reserved.
//

import UIKit

final class CauseDetailViewController: UITableViewController {
  
  private var cause: Cause!
  
  @IBOutlet private var causeTitleLabel: UILabel!
  @IBOutlet private var causeImageView: UIImageView!
  
  class func instantiate(with cause: Cause) -> CauseDetailViewController {
    let storyboard = UIStoryboard(name: "CauseDetailViewController", bundle: nil)
    let vc = storyboard.instantiateInitialViewController() as! CauseDetailViewController
    vc.cause = cause
    return vc
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    causeTitleLabel.text = cause.title
    causeImageView.image = cause.image
  }
}
