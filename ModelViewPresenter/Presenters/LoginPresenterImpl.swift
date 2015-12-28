//
//  LoginPresenterImpl.swift
//  ModelViewPresenter
//
//  Created by Pablo Martinez on 28/12/2015.
//  Copyright © 2015 PabloSoftware. All rights reserved.
//

import UIKit

class LoginPresenterImpl: NSObject, LoginPresenter, LoginInteractorDelegate {

    var loginView : LoginView
    var loginInteractor : LoginInteractor?
    
    
    init(view : LoginView) {
        
        self.loginView = view
        super.init()
        self.loginInteractor = LoginInteractorImpl(delegate: self)
        
    }
    
    func validateUser(username: String, password: String) {
        self.loginInteractor?.login(username, password: password)
    }
    
    func onInteractorLoginError() {
        self.loginView.onErrorLogin()
    }
    func onInteractorLoginOk() {
        self.loginView.onLoginOk()
    }
    
}
