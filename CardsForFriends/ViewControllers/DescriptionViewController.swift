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
        
        addGradient()
        descriptionLabel.text = descriptionCard
    }
}
