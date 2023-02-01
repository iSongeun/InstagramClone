//
//  MagnifierViewController.swift
//  instagramClone
//
//  Created by Leesongeun on 2023/02/01.
//

import UIKit

class MagnifierViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setSearchBar()
    }
    
    func setSearchBar(){
        let searchBar = UISearchBar()
            searchBar.placeholder = "Search"
            self.navigationItem.titleView = searchBar
    }

}

extension MagnifierViewController : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MagnifierCollectionViewCell", for: indexPath) as? MagnifierCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/3 - 30, height: collectionView.frame.width/3 - 30)
    }
}
