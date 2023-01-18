//
//  ViewController.swift
//  ProyectoFinaL
//
//  Created by LUIS on 07/01/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var menuTableView: UITableView!
    
    var options: [option] = [option(title: "Home", segue: "HomeSegue"),
                                option(title: "Settings", segue: "SettingsSegue"),
                                option(title: "Profile", segue: "ProfileSegue"),
                                option(title: "Terms and Conditions", segue: "TermsSegue"),
                                option(title: "Privacy Policy", segue: "PrivacySegue")
                               ]
       
       struct option {
           var title = String()
           var segue = String()
       }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
              menuTableView.delegate = self
              menuTableView.dataSource = self
              menuTableView.backgroundColor = .clear
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return options.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! tableViewCell
        cell.backgroundColor = .clear
        cell.descriptionLabel.text = options[indexPath.row].title
        cell.descriptionLabel.textColor = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let indexPath = tableView.indexPathForSelectedRow {

            let currentCell = (tableView.cellForRow(at: indexPath) ?? UITableViewCell()) as UITableViewCell
            
            // optional: animate the button when tapped
            
            currentCell.alpha = 0.5
            UIView.animate(withDuration: 1, animations: {
                currentCell.alpha = 1
            })
            
            // optional: perform a segue when tapped
            
             self.parent?.performSegue(withIdentifier: options[indexPath.row].segue, sender: self)
            
        }
    }
    
}

class tableViewCell: UITableViewCell {
    
    @IBOutlet var descriptionLabel: UILabel!
    
}
