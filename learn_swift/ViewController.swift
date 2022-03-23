//
//  ViewController.swift
//  learn_swift
//
//  Created by Евгений Дубиль on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainTitle: UILabel!
    
    @IBOutlet var toggleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTitle.isHidden = true
        toggleButton.layer.cornerRadius = 8
        // Do any additional setup after loading the view.
    }

    @IBAction func onButtonPress() {
        mainTitle.isHidden = !mainTitle.isHidden
        
        let btnText = mainTitle.isHidden ? "Show Text" : "Hide Text" 
        
        toggleButton.setTitle(btnText, for: .normal)
    }
    
}

