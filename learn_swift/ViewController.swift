//
//  ViewController.swift
//  learn_swift
//
//  Created by Евгений Дубиль on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - outlet
    @IBOutlet var topSegments: UISegmentedControl!
    @IBOutlet var mainTitle: UILabel!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var mainView: UIView!
    
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var redSlider: UISlider!
    
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var blueValue: UILabel!
    @IBOutlet var blueSlider: UISlider!
    
    
    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topSegments.insertSegment(withTitle: "Fourth", at: 3, animated: true)
        
        mainTitle.font = mainTitle.font.withSize(30)
        mainTitle.textAlignment = .center
        mainTitle.numberOfLines = 2
        
        mainView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        
    }
    
    // MARK: - IBActions
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
    
    @IBAction func changeColor(_ sender: UISlider) {
        setColor()
        
        switch sender.tag {
        case 0: redValue.text = String(Int(redSlider.value))
        case 1: greenValue.text = String(Int(greenSlider.value))
        case 2: blueValue.text = String(Int(blueSlider.value))
        default: break
        }
    }
    
    // MARK: - private functions
    private func setColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        mainView.backgroundColor = UIColor(
            red: red / 255,
            green: green / 255,
            blue: blue / 255,
            alpha: 1
        )
    }
    
    private func changeSegmentProps(_ title: String, _ color: UIColor, _ additionalText: String? = "") {
        mainTitle.text = "\(title) segment \(additionalText ?? "")"
        mainTitle.textColor = color
    }
}

