//
//  Players.swift
//  LearningExp
//
//  Created by Dias Nakhanov on 05.08.2023.
//

import UIKit

struct Player {
    let image: UIImage
    let title: String
}

var images = ["image0","image1","image2","image3","image4","image5","image6","image7","image8","image9","image10"]


let players: [Player] = [

    Player(image:#imageLiteral(resourceName: "image0"), title: "Onana\nGK"),
    Player(image: #imageLiteral(resourceName: "image1"), title: "Camavinga\nLB"),
    Player(image: #imageLiteral(resourceName: "image2"), title: "Walker\nRB"),
    Player(image:#imageLiteral(resourceName: "image3"), title: "De Ligt\nCB"),
    Player(image:#imageLiteral(resourceName: "image4"), title: "Dias'\nCB"),
    Player(image:#imageLiteral(resourceName: "image5"), title: "De Bruyne\nCAM"),
    Player(image:#imageLiteral(resourceName: "image6"), title: "Gundogan\nCM"),
    Player(image:#imageLiteral(resourceName: "image7"), title: "Modric\nCM"),
    Player(image:#imageLiteral(resourceName: "image8"), title: "Mbappe\nLW"),
    Player(image:#imageLiteral(resourceName: "image9"), title: "Messi\nRW"),
    Player(image:#imageLiteral(resourceName: "image10"), title: "Haaland\nCF")
]

