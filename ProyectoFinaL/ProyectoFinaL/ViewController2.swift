//
//  VieViewController2.swift
//  ProyectoFinaL
//
//  Created by LUIS on 08/01/23.
//

import UIKit



let menu = [option(title: "Chicken Little Hot", imageName: "HomeSegue"),
                         option(title: "Chesse Crazy", imageName: "kfc"),
                         option(title: "Extreme Monster", imageName: "ProfileSegue"),
                         option(title: "La Superporky", imageName: "TermsSegue"),
                         option(title: "Pa ke la escondas y te la comas solo", imageName: "PrivacySegue")
                           ]
   
   struct option {
       var title = String()
       var imageName = String()
   }
class ViewController2: UIViewController, UITableViewDataSource {
 
    

    
    
    @IBOutlet var menuTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTable.backgroundColor = .clear
        menuTable.dataSource = self
        menuTable.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        view.addSubview(menuTable)
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        let model = menu[indexPath.row]
        
        var listContentConfiguration = UIListContentConfiguration.cell()
        listContentConfiguration.text = model.title
        listContentConfiguration.image = UIImage(systemName: model.imageName)
        cell.contentConfiguration = listContentConfiguration
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
