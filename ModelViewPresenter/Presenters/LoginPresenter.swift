//
//  LoginPresenter.swift
//  ModelViewPresenter
//
//  Created by Pablo Martinez on 28/12/2015.
//  Copyright © 2015 PabloSoftware. All rights reserved.
//

import UIKit

protocol LoginView{
    func onLoginOk()
    func onErrorLogin()
    func showProgress()
}

protocol LoginPresenter {
    func validateUser(username: String, password : String)
}
