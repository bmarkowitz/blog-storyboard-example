//
//  ViewController.swift
//  Storyboard-Login
//
//  Created by Brett Markowitz on 12/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    let correctUsername = "user1"
    let correctPassword = "testpassword"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        let typedUsername = usernameTextField.text
        let typedPassword = passwordTextField.text
        
        var alertTitle = ""
        var alertMessage = ""
        
        if typedUsername == correctUsername && typedPassword == correctPassword {
            // Credentials are correct
            alertTitle = "Success"
            alertMessage = "The credentials are correct."
        } else {
            // Credentials are incorrect
            alertTitle = "Error"
            alertMessage = "The credentials are incorrect."
        }
        
        // 1. Create the error alert
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        
        // 2. Create an "OK" action
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        })
        
        // 3. Add the action to the alert
        alertController.addAction(okAction)
        
        // 4. Show the alert
        present(alertController, animated: true, completion: nil)
    }
}
