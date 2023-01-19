
//
//  ViewController4.swift
//  ProyectoFinaL
//
//  Created by LUIS on 08/01/23.
//

import UIKit
let email : [String] = []
let contraseña : [String] = []

class ViewController4: UIViewController {

    private let profileImageView: UIImageView = {
           let imageView = UIImageView()
           imageView.image = UIImage(named: "Cell.jpg")
           imageView.translatesAutoresizingMaskIntoConstraints = false
           imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
           imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
           return imageView
       }()
       
       private let containerStackView: UIStackView = {
           let stack = UIStackView()
           stack.translatesAutoresizingMaskIntoConstraints = false
           stack.axis = .vertical
           stack.spacing = 20
           return stack
       }()
       
       private let emailTextField: UITextField = {
           let textField = UITextField()
           textField.backgroundColor = .gray.withAlphaComponent(0.1)
           textField.placeholder = "Email"
           textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
           textField.leftViewMode = .always
           textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
           textField.font = UIFont.systemFont(ofSize: 20)
           textField.layer.cornerRadius = 10
           return textField
       }()
       
       private let passwordTextField: UITextField = {
           let textField = UITextField()
           textField.backgroundColor = .gray.withAlphaComponent(0.1)
           textField.placeholder = "Password"
           textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
           textField.leftViewMode = .always
           textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
           textField.font = UIFont.systemFont(ofSize: 20)
           textField.layer.cornerRadius = 10
           textField.isSecureTextEntry = true
           return textField
       }()
    
    private let passwordConfirmTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .gray.withAlphaComponent(0.1)
        textField.placeholder = "Password Confirm"
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.leftViewMode = .always
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.layer.cornerRadius = 10
        textField.isSecureTextEntry = true
        return textField
    }()
       
       private let RegisterButton: UIButton = {
           let button = UIButton(type: .system)
           button.translatesAutoresizingMaskIntoConstraints = false
           button.setTitle("Register", for: .normal)
           button.setTitleColor(.white, for: .normal)
           button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
           button.layer.cornerRadius = 10
           button.backgroundColor = .systemBlue
           button.heightAnchor.constraint(equalToConstant: 50).isActive = true
           return button
       }()
       
    
       
       override func viewDidLoad() {
           super.viewDidLoad()
           configUI()
           configConstraints()
           configTargets()
       }
       private func configUI() {
           title = "Login interface"
        view.backgroundColor = #colorLiteral(red: 0.9718151689, green: 0.8251175284, blue: 0.7719746232, alpha: 1)
       }
       
       private func configConstraints() {
           view.addSubview(profileImageView)
           profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 180).isActive = true
           profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
           
           view.addSubview(containerStackView)
           containerStackView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 50).isActive = true
           containerStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
           containerStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
           
           [emailTextField, passwordTextField,passwordConfirmTextField, RegisterButton ].forEach {
               containerStackView.addArrangedSubview($0)
           
           }
           
       }
       
       private func configTargets() {
        RegisterButton.addTarget(self, action: #selector(SignAction), for: .touchUpInside)
       }
       
       @objc
    private func SignAction() {
        if(passwordTextField.text == passwordConfirmTextField.text && (emailTextField.text != "") && passwordTextField.text != ""){
            emails.append(emailTextField.text!)
            passwords.append(passwordTextField.text!)
            credenciales[emailTextField.text!] = passwordTextField.text
            print("Se logro")
        }
        
            
    }
    
  

}

