//
//  MeViewController.swift
//  TabbedAppVincentC
//
//  Created by Vincent Cubit on 9/25/21.
//


import UIKit


class MeViewController: UIViewController {
    
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var birthday: UILabel!
    
    
    var nameString = ""
    var emailString = ""
    var birthdayString = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.name.text = self.nameString
        self.email.text = self.emailString
        self.birthday.text = self.birthdayString

        
    }
    

}

