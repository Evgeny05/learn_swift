//
//  ViewController.swift
//  learn_swift
//
//  Created by Евгений Дубиль on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - outlet
    
    
    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - IBActions
    @IBAction func navigateToInfoScreen() {
        performSegue(withIdentifier: "showDetails", sender: "")
    }
    
    // MARK: - private functions
    
    }

