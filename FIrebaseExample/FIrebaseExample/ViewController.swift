//
//  ViewController.swift
//  FIrebaseExample
//
//  Created by Samayak Interactive on 24/01/17.
//  Copyright © 2017 Mangesh Shinde. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet var labelMessage: UILabel!
    @IBOutlet var tfPassword: UITextField!
    @IBOutlet var tfEmail: UITextField!
       @IBAction func buttonResgister(_ sender: AnyObject)
    {
        FIRApp.configure()
        let email = tfEmail.text
        let password = tfPassword.text
        FIRAuth.auth()?.createUser(withEmail: email!, password: password!, completion: { (user: FIRUser?, error) in
            if error == nil {
                self.lableMessage.text = "You are successfully registered"
            }else{
                self.lableMessage.text = "Registration Failed.. Please Try Again"
            }
            
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        FIRApp.configure()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

