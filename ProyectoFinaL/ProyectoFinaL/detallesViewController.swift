//
//  detallesViewController.swift
//  ProyectoFinaL
//
//  Created by LUIS on 18/01/23.
//

import UIKit

class detallesViewController: UIViewController {
    
    var idProducto = Int()
    var getname = String()
    var getimage = UIImage()
    var nombreR = String()
    var count = Int()
    //imagen y descripcion en la descripcion
    @IBOutlet weak var imaregre: UIImageView!
    @IBOutlet weak var laberegre: UILabel!
    
    @IBOutlet var labelcita: UILabel!
    //boton para mandar al carrito
    @IBAction func presionado(_ sender: UIButton) {
        Carrito.append(idProducto)
        count += 1
        labelcita.text = String (count)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 0
    
        imaregre.image = getimage
        laberegre.text = getname
        
      
    }
}
