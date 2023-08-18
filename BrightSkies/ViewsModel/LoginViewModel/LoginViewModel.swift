//
//  HomeViewModel.swift
//  Tecnopolitan
//
//  Created by aBoelghet  on 14/08/2023.
//

import Foundation

protocol LoginViewModelDelegate {
}

class LoginViewModel {
    
 
    var delegate: LoginViewModelDelegate?
    
    
    init(delegate:LoginViewModelDelegate) {
        self.delegate = delegate
    }

    
   
    
    
    
}
