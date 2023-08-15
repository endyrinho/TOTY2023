//
//  ImageCollectionVC.swift
//  LearningExp
//
//  Created by Dias Nakhanov on 20.07.2023.
//

import UIKit

class ImageCollectionVC: UICollectionViewCell {

    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func setup(with player: Player) {
        photoView.image = player.image
        titleLabel.text = player.title
    }

}
