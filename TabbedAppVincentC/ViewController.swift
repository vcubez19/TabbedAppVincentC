//
//  ViewController.swift
//  TabbedAppVincentC
//
//  Created by Vincent Cubit on 9/25/21.
//


import UIKit


class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var birthday: UIDatePicker!
    
    
    let formatter = DateFormatter()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.name.delegate = self
        self.email.delegate = self
        
        
        self.formatter.dateStyle = .short
        self.formatter.timeStyle = .none
        
        
    }
    
    
    @IBAction func didTapSave(_ sender: Any) {
        
        
        let name = self.name.text!
        let email = self.email.text!
        let birthday = self.formatter.string(from: self.birthday.date)
        
        
        let navVC = tabBarController?.viewControllers?[1] as! UINavigationController
        let meVC = navVC.topViewController as! MeViewController

        
        meVC.nameString = "Name: \(name)"
        meVC.emailString = "Email: \(email)"
        meVC.birthdayString = "Birthday: \(birthday)"
        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

}

