//
//  MainViewController.swift
//  instagramClone
//
//  Created by Leesongeun on 2023/02/01.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var StoryCollectionView: UICollectionView!
    
    @IBOutlet weak var FeedCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StoryCollectionView.tag = 0
        FeedCollectionView.tag = 1
    }
    

}

extension MainViewController : UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0 {
            return 100
        }
        else if collectionView.tag == 1{
            return 10
        }
        else {
            return 10
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView.tag == 0 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as? StoryCollectionViewCell else {
                return UICollectionViewCell()
            }
            
            return cell
        }
        else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeedCollectionViewCell", for: indexPath) as? FeedCollectionViewCell else {
                return UICollectionViewCell()
            }
            
            return cell 
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 580
        )
    }
    
    
}
