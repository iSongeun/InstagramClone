//
//  FeedCollectionViewCell.swift
//  instagramClone
//
//  Created by Leesongeun on 2023/02/01.
//

import UIKit

class FeedCollectionViewCell: UICollectionViewCell , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as? ImageCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    
    @IBOutlet weak var ImageCollectionViewCell: ImageCollectionViewCell!
}
