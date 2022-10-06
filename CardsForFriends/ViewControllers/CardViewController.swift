//
//  CardViewController.swift
//  CardsForFriends
//
//  Created by Andrey Sandler on 05.10.2022.
//

import UIKit

class CardViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var habitateLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    @IBOutlet var foodLabel: UILabel!
    
    // MARK: - Public Properties
    var card: Card!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradient()

        nameLabel.text = card.name
        surnameLabel.text = card.surname
        ageLabel.text = String(card.yearsOld)
        habitateLabel.text = card.habitat
        hobbyLabel.text = card.hobby
        foodLabel.text = card.favoriteFood
    }
}
