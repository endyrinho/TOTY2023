//
//  PlayerDetailVC.swift
//  LearningExp
//
//  Created by Dias Nakhanov on 19.07.2023.
//

import UIKit

class PlayerDetailVC: UIViewController {
    
    @IBOutlet weak var bigImage: UIImageView!
    var imageReceived = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        bigImage.image = imageReceived 
        bigImage.layer.cornerRadius = 20
    }
    
    
}
