
//
//  ViewController4.swift
//  ProyectoFinaL
//
//  Created by LUIS on 08/01/23.
//

import UIKit
let email : [String] = []


class ViewController4: UIViewController {
    
    @IBOutlet weak var sign: UIButton!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var contraseña: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        sign.layer.cornerRadius = 8
        sign.layer.borderWidth = 1
       // sign.layer.borderColor = UIColor.black.cgColor
        // Do any additional setup after loading the view.
    }
    
    private func configTargets2() {
        sign.addTarget(self, action: #selector(signAction2), for: .touchUpInside)
    
    }
    
    @objc
    private func signAction2() {
        let s : String = email.text!
        let s2 : String = contraseña.text!
        
      print("\(s)")
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
