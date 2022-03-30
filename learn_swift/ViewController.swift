//
//  ViewController.swift
//  learn_swift
//
//  Created by Евгений Дубиль on 23.03.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - outlet
    
    @IBOutlet var tableView: UITableView!
    
    var users = ["Vova", "Petya"]
    
    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        users.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
               
       cell.textLabel?.text = users[indexPath.row]
       return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let user = users[indexPath.row]
        
        performSegue(withIdentifier: "showDetails", sender: user)
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? InfoViewController else { return }
        
        viewController.name = sender as? String
    }
    
//    TODO IBAction onClose -> self.dismiss()
//    TODO try extansion table
    
    // MARK: - IBActions
//    @IBAction func navigateToInfoScreen() {
//        performSegue(withIdentifier: "showDetails", sender: "")
//    }
    
    // MARK: - private functions
    
    }

