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
    
    @IBOutlet var userProfileImage: UIImageView! {
        didSet {
            userProfileImage.layer.cornerRadius = userProfileImage.frame.height / 2
        }
    }
    
    // MARK: - Public Properties
    var card: Card!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradient()
        navigationItem.backBarButtonItem?.tintColor = .white
        userProfileImage.layer.cornerRadius = 50
        
        nameLabel.text = card.name
        surnameLabel.text = card.surname
        ageLabel.text = String(card.yearsOld)
        habitateLabel.text = card.habitat
        hobbyLabel.text = card.hobby
        foodLabel.text = card.favoriteFood
        userProfileImage.image = UIImage(named: card.image)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let descriptionVC = segue.destination as? DescriptionViewController else { return }
        
        descriptionVC.descriptionCard = .getCard()
    }
}

