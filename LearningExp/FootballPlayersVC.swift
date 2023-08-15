//
//  FootballPlayersVC.swift
//  LearningExp
//
//  Created by Dias Nakhanov on 19.07.2023.
//

import UIKit

class FootballPlayersVC: UIViewController{
    
    let countCells = 3
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        collectionView.dataSource =  self
        collectionView.delegate   =  self
        collectionView.alwaysBounceVertical = true
        
       
    }
    
 
}

extension FootballPlayersVC:  UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return players.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellImage", for: indexPath) as! ImageCollectionVC
        
        cell.photoView.layer.cornerRadius = 10
        cell.photoView.layer.borderWidth = 1.0
        cell.photoView.layer.borderColor = UIColor.white.cgColor
        cell.layer.masksToBounds = true
        cell.setup(with: players[indexPath.row])
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let frameCV = collectionView.frame
        let widthCell = frameCV.width / CGFloat(countCells) - 14
        let heightCell = widthCell + 53
        return CGSize(width: widthCell, height: heightCell)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let destVC = mainStoryBoard.instantiateViewController(withIdentifier: "PlayerDetailVC") as! PlayerDetailVC
        destVC.imageReceived = UIImage(named: images[indexPath.row])!
        self.navigationController?.pushViewController(destVC, animated: true)
        
        
    }
    
}


