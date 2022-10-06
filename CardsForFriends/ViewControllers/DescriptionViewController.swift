//
//  DescriptionViewController.swift
//  CardsForFriends
//
//  Created by Andrey Sandler on 05.10.2022.
//

import UIKit

class DescriptionViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var descriptionLabel: UILabel!
    
    // MARK: - Public Properties
    var descriptionCard: String!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [#colorLiteral(red: 0.9507465959, green: 0.480499506, blue: 0.507527709, alpha: 1).cgColor, #colorLiteral(red: 0.866619885, green: 0.6335844994, blue: 0.9783375859, alpha: 1).cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)

        
        descriptionLabel.text = descriptionCard
    }
}
