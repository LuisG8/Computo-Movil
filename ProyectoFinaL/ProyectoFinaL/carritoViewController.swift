//
//  carritoViewController.swift
//  ProyectoFinaL
//
//  Created by LUIS on 18/01/23.
//

import UIKit

import Foundation

class carritoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Carrito.count
    }
    
   
    //@IBOutlet var cellCarrito: UITableView!
    @IBOutlet weak var sumTotal: UILabel!
    
    //funcion que mada a las celdas lo comprado
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCarrito", for: indexPath)
        cell.textLabel?.text = "\(menu[Carrito[indexPath.row]].title)\t\t\t\t\t $\(menu[Carrito[indexPath.row]].precio)"
   
        //sumar los productos
        var acumulador = 0
        for i in 0..<Carrito.count{
            acumulador += menu[Carrito[i]].precio
                sumTotal.text = "$\(acumulador)"
        }
        return cell
 
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
}
