//
//  ViewController.swift
//  LoginApp
//
//  Created by Оксана Щукина on 25.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    let userName = "Oksana"
    let password = "password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let helloVC = segue.destination as? HelloViewController else {return}
        helloVC.welcomeValue = loginTF.text ?? ""
    }
    
    @IBAction func checkLoginAndPassword() {
        if loginTF.text?.count == 0 {
            showAlert(with: "Oops", and: "Enter your name")
            return
        }
        
        if passwordTF.text?.count == 0 {
            showAlert(with: "Oops", and: "Enter your password")
            return
        }
        
        if loginTF.text == userName, passwordTF.text == password {
            performSegue(withIdentifier: "showMe", sender: self)
        } else {
            showAlert(with: "Oops", and: "Wrong login or password")
        }
        
    }
    
    @IBAction func restoreUserNameOrPassword(_ sender: UIButton) {
        switch sender {
        case forgotUserNameButton:
            showAlert(with: "Oops!", and: "Your name is Oksana 🥳")
        default:
            showAlert(with: "Oops", and: "Your password is password 🤯")
        }
    }
    
    @IBAction func unwind (for segue: UIStoryboardSegue) {
        guard let helloVC = segue.source as? HelloViewController else {return}
        if helloVC.logoutButton.isTouchInside {
            loginTF.text = ""
            passwordTF.text = ""
        }
    }
     
    private func showAlert(with title: String, and text: String){
        let alert = UIAlertController(title: title, message: text, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

