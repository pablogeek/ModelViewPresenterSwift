//
//  LoginInteractor.swift
//  ModelViewPresenter
//
//  Created by Pablo Martinez on 28/12/2015.
//  Copyright © 2015 PabloSoftware. All rights reserved.
//

import UIKit

protocol LoginInteractorDelegate{
    func onInteractorLoginOk()
    func onInteractorLoginError()
}

protocol LoginInteractor {

    func login(username : String, password : String)
    
}
