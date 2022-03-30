//
//  InfoViewController.swift
//  learn_swift
//
//  Created by Евгений Дубиль on 29.03.2022.
//

import UIKit

class InfoViewController: UIViewController {

    
    @IBOutlet var mainLabel: UILabel!
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.mainLabel.text = name
    }

    

}
