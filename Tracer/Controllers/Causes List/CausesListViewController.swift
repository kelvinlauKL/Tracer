//
//  CausesListViewController.swift
//  Tracer
//
//  Created by Kelvin Lau on 2017-11-25.
//  Copyright © 2017 Kelvin Lau. All rights reserved.
//

import UIKit

final class CausesListViewController: UIViewController {
  
  private var causes: [Cause] = [] {
    didSet {
      collectionView.reloadData()
    }
  }
  
  private var dataStore: DataStore!
  @IBOutlet private var collectionView: UICollectionView!
  
  class func instantiate(with dataStore: DataStore) -> CausesListViewController {
    let storyboard = UIStoryboard(name: "CausesListViewController", bundle: nil)
    let vc = storyboard.instantiateInitialViewController() as! CausesListViewController
    vc.dataStore = dataStore
    return vc
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    dataStore.getCauses { causes in
      self.causes = causes
    }
  }
}

// MARK: - UICollectionViewDataSource
extension CausesListViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return causes.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CausesCollectionViewCell.identifier, for: indexPath) as? CausesCollectionViewCell else { fatalError() }
    let cause = causes[indexPath.item]
    cell.configure(title: cause.title, image: cause.image)
    return cell
  }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension CausesListViewController: UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let width = collectionView.frame.width - 10
    let height = collectionView.frame.height / 3
    
    return CGSize(width: width, height: height)
  }
}
