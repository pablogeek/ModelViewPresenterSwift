//
//  LoginInteractorImpl.swift
//  ModelViewPresenter
//
//  Created by Pablo Martinez on 28/12/2015.
//  Copyright © 2015 PabloSoftware. All rights reserved.
//

import UIKit

class LoginInteractorImpl: LoginInteractor {

    let loginDelegate : LoginInteractorDelegate
    
    init(delegate :LoginInteractorDelegate){
        self.loginDelegate = delegate
    }
    
    func login(username: String, password: String) {
        if (username == "pablo" && password == "12345"){
            self.loginDelegate.onInteractorLoginOk()
        }else{
            self.loginDelegate.onInteractorLoginError()
        }
    }
    
}
