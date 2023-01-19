//
//  ViewControllerCarrito.swift
//  ProyectoFinaL
//
//  Created by LUIS on 18/01/23.
//

import UIKit

class ViewControllerCarrito: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    
    // imagenes
    var imatenis = [UIImage(named: "totisLimon")!, UIImage(named: "pelon")!, UIImage(named: "paletaSandia")!,UIImage(named: "pelonPelonete")!, UIImage(named: "paletaMango")!,UIImage(named: "totisChile")!,UIImage(named: "tamaRoca")!,UIImage(named: "paletaManita")!,UIImage(named: "bubuLubu")!,UIImage(named: "paletaElote")! ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Datos de los productos
        Productos.append(Producto(nombre: "Totis Sal y Limón", precio: 8))
        Productos.append(Producto(nombre: "Pelon Pelo Rico", precio:6))
        Productos.append(Producto(nombre: "Paleta de sandía", precio: 5))
        Productos.append(Producto(nombre: "Pelon-Pelonetes", precio: 7))
        Productos.append(Producto(nombre: "Paleta de mango", precio: 5))
        Productos.append(Producto(nombre: "Totis Chile y limón", precio: 8))
        Productos.append(Producto(nombre: "Tama-Roca", precio: 6))
        Productos.append(Producto(nombre: "Paletas Manita", precio: 4))
        Productos.append(Producto(nombre: "Bubu lubu ", precio: 5))
        Productos.append(Producto(nombre: "Vero Elotes", precio: 3))
    }
    
    // funcion para mostrar en la vista los productos
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Productos.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.labe.text = "\(Productos[indexPath.row].nombre) \t\t $\(Productos[indexPath.row].precio)"
        cell.ima.image = imatenis[indexPath.row]
        
        return cell
    }
    
    //funcion para mostrar las descripciones
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DcV = Storyboard.instantiateViewController(withIdentifier: "detallesViewController") as! detallesViewController
        
        DcV.idProducto = indexPath.row
        DcV.getname = "\(Productos[indexPath.row].nombre) \n $\(Productos[indexPath.row].precio) "
        
        DcV.getimage = imatenis[indexPath.row]
        
        self.navigationController?.pushViewController(DcV, animated: true)
    }
}

