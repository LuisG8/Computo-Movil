//
//  VieViewController2.swift
//  ProyectoFinaL
//
//  Created by LUIS on 08/01/23.
//

import UIKit



let menu = [option(title: "Chicken Little Hot", imageName: "Menu1.jpg", precio : 150),
            option(title: "Chesse Crazy", imageName: "Menu2.jpg", precio : 120),
            option(title: "Extreme Monster", imageName: "Menu3.jpg", precio : 180),
            option(title: "La Superporky", imageName: "Menu4.jpg", precio : 140),
            option(title: "Para no compartir", imageName: "Menu5.jpg", precio : 200)
                           ]
   
   struct option {
       var title = String()
       var imageName = String()
       var precio = Int()
   }
class ViewController2: UIViewController, UITableViewDataSource,UITableViewDelegate {
 
    

    
    
    @IBOutlet var menuTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuTable.dataSource = self
        menuTable.delegate = self
        menuTable.backgroundColor = #colorLiteral(red: 0.9718151689, green: 0.8251175284, blue: 0.7719746232, alpha: 1)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = menu[indexPath.row]
        let cell = menuTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = model.title
        cell.iconImage.image = UIImage(named: model.imageName)
        
        
  
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DcV = Storyboard.instantiateViewController(withIdentifier: "detallesViewController") as! detallesViewController
        
        DcV.idProducto = indexPath.row
        DcV.getname = "\(menu[indexPath.row].title) \n $\(menu[indexPath.row].precio) "
        DcV.nombreR = menu[indexPath.row].title
        DcV.getimage = UIImage(named: menu[indexPath.row].imageName)!
        print ("hola")
        show(DcV, sender: self)    }
    
}
