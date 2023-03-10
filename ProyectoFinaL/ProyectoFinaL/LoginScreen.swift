//
//  LoginScreen.swift
//  ProyectoFinaL
//
//  Created by LUIS on 16/01/23.
//

import UIKit

var emails  = [""]
var passwords  = [""]

var credenciales : [String:String] = ["LaChida":"12","abdul@gmail.com":"123","CapitolioEnYamas":"1234"]

var recibiEmail: String?
var recibiPassword: String?
class LoginScreen: UIViewController {

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
       
       private let loginButton: UIButton = {
           let button = UIButton(type: .system)
           button.translatesAutoresizingMaskIntoConstraints = false
           button.setTitle("Log In", for: .normal)
           button.setTitleColor(.white, for: .normal)
           button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
           button.layer.cornerRadius = 10
           button.backgroundColor = .systemBlue
           button.heightAnchor.constraint(equalToConstant: 50).isActive = true
           return button
       }()
       
       private let forgotPasswordButton: UIButton = {
           let button = UIButton(type: .system)
           button.translatesAutoresizingMaskIntoConstraints = false
           button.setTitle("forgot your password?", for: .normal)
           button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
           button.layer.cornerRadius = 10
           button.heightAnchor.constraint(equalToConstant: 25).isActive = true
           return button
       }()
       
       private let signUpButton: UIButton = {
           let button = UIButton(type: .system)
           button.translatesAutoresizingMaskIntoConstraints = false
           button.setTitle("Sign Up", for: .normal)
           button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
           button.layer.cornerRadius = 10
           button.heightAnchor.constraint(equalToConstant: 25).isActive = true
           return button
       }()
       
       override func viewDidLoad() {
           super.viewDidLoad()
           configUI()
           configConstraints()
           configTargets()
      //  emails.append((recibiEmail)!)
       // passwords.append((recibiPassword)!)
       }
       private func configUI() {
           title = "Login interface"
        view.backgroundColor = #colorLiteral(red: 0.9718151689, green: 0.8251175284, blue: 0.7719746232, alpha: 1)
       }
       
       private func configConstraints() {
           view.addSubview(profileImageView)
           profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
           profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
           
           view.addSubview(containerStackView)
           containerStackView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 50).isActive = true
           containerStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
           containerStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
           
           [emailTextField, passwordTextField, loginButton, forgotPasswordButton, signUpButton].forEach {
               containerStackView.addArrangedSubview($0)
           
           }
           
       }
       
       private func configTargets() {
           loginButton.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(SignAction), for: .touchUpInside)
       }
       
       @objc
       private func loginAction() {
           print("login validation in ViewModel")
       // textFieldContent(emailTextField)
        print("s =  \(emails.last ?? "None")")
        print("s =  \(passwords.last ?? "None")")
        var pruebaEmail = emailTextField.text
        var pruebapassword = passwordTextField.text
        
        if(credenciales.contains {$0.key == pruebaEmail}){
            if(credenciales[pruebaEmail!] == passwordTextField.text){
                
                
                let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
                let second2 = storyboard.instantiateViewController(withIdentifier: "ordenar") as! ViewController3
                
                show(second2, sender: self)

            }
        }
        
       
       }
    @objc
    private func SignAction() {
       
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let second = storyboard.instantiateViewController(withIdentifier: "Login") as! ViewController4
        
        present(second, animated: true, completion: nil)
    }
    
    func textFieldContent(_ textfield: UITextField){
        let s: String = textfield.text!
        print("s =  \(s)")
    }

}
