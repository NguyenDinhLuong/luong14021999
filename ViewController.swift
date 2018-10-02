//
//  ViewController.swift
//  DinhLuong
//
//  Created by Admin on 02/10/2018.
//  Copyright © 2018 Techsmarter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    let database: Dictionary<String, String> = ["username":"DinhLuong", "password":"123456"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.addTarget(self, action: #selector(self.clickLoginButton), for: .touchUpInside)
    }
    @objc func clickLoginButton(){
        let userName = usernameTextfield.text
        let password = passwordTextfield.text
        
        let localUsername = database["username"]
        let localPassword = database["password"]
        
        if userName!.isEmpty  || password!.isEmpty {
            let alertMessage = "All fields are requỉed."
            let alertController = UIAlertController(title:"Invalid", message: alertMessage, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
            return
            
        }
        guard userName == localUsername else {
            
            let alertMessage = "Login is unsucessful."
            let alertController = UIAlertController(title:"Invalid Username", message: alertMessage, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
            
            return
        }
        guard password == localPassword else {
            
            
            
            let alertMessage = "Login is unsucessful."
            let alertController = UIAlertController(title:"Invalid Password", message: alertMessage, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
            
            return
        }
         self.performSegue(withIdentifier: "showMain", sender: self)
}
}

