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
    
    
    private let userName = "Oksana"
    private let password = "password"


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let helloVC = segue.destination as? HelloViewController else {return}
        helloVC.welcomeValue = userName
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
            passwordTF.text = ""
        }
        
    }
    
    @IBAction func restoreUserNameOrPassword(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(with: "Oops!", and: "Your name is \(userName) 🥳")
            : showAlert(with: "Oops", and: "Your password is \(password) 🤯")
    }
    
    @IBAction func unwind (for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
     
    private func showAlert(with title: String, and text: String){
        let alert = UIAlertController(title: title, message: text, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

