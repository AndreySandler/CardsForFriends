//
//  HomeViewController.swift
//  CardsForFriends
//
//  Created by Andrey Sandler on 05.10.2022.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var greetingLabel: UILabel!
    
    // MARK: - Public Properties
    var greeting: String!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradient()
        greetingLabel.text = "Welcome, \(greeting ?? "")!"
    }
}

extension UIViewController {
    func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [#colorLiteral(red: 0.9507465959, green: 0.480499506, blue: 0.507527709, alpha: 1).cgColor, #colorLiteral(red: 0.866619885, green: 0.6335844994, blue: 0.9783375859, alpha: 1).cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
