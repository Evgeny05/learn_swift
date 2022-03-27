//
//  ViewController.swift
//  learn_swift
//
//  Created by Евгений Дубиль on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var topSegments: UISegmentedControl!
    @IBOutlet var mainTitle: UILabel!
    @IBOutlet var datePicker: UIDatePicker!
    
    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topSegments.insertSegment(withTitle: "Fourth", at: 3, animated: true)
        
        mainTitle.font = mainTitle.font.withSize(30)
        mainTitle.textAlignment = .center
        mainTitle.numberOfLines = 2
    }
    
    @IBAction func onChangeSegments() {
        switch topSegments.selectedSegmentIndex {
            case 0:
                changeSegmentProps("First", .red)
                
            case 1:
                changeSegmentProps("Second", .green)
                
            case 2:
                changeSegmentProps("Third", .blue)
                
            default:
                changeSegmentProps("Idk name of", .cyan, ":(")
            }
    }
    
    func changeSegmentProps(_ title: String, _ color: UIColor, _ additionalText: String? = "") {
        mainTitle.text = "\(title) segment \(additionalText ?? "")"
        mainTitle.textColor = color
    }
}

