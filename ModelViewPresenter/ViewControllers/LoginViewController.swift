//
//  LoginViewController.swift
//  ModelViewPresenter
//
//  Created by Pablo Martinez on 28/12/2015.
//  Copyright © 2015 PabloSoftware. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginView {

    var loginPresenter : LoginPresenter?
    
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var txtUsername: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginPresenter = LoginPresenterImpl(view: self)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tappedLogin(sender: AnyObject) {
        loginPresenter?.validateUser(txtUsername.text!, password: txtPassword.text!)
    }

    
    func onLoginOk() {
        let alert = UIAlertController(title: "Login", message: "Login Ok", preferredStyle: UIAlertControllerStyle.Alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func onErrorLogin() {
        let alert = UIAlertController(title: "Login", message: "Login Error", preferredStyle: UIAlertControllerStyle.Alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)    }
    
    func showProgress() {
        
    }

}
