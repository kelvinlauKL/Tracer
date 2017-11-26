//
//  CausesCollectionViewCell.swift
//  Tracer
//
//  Created by Kelvin Lau on 2017-11-25.
//  Copyright © 2017 Kelvin Lau. All rights reserved.
//

import UIKit

final class CausesCollectionViewCell: UICollectionViewCell {
  
  static let identifier = "\(CausesCollectionViewCell.self)"
  
  @IBOutlet private var titleLabel: UILabel!
  @IBOutlet private var causeImageView: UIImageView!
  
  func configure(title: String, image: UIImage) {
    titleLabel.text = title
    causeImageView.image = image
  }
}
