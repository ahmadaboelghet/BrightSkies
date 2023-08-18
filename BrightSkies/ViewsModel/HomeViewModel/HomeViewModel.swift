//
//  HomeViewModel.swift
//  Tecnopolitan
//
//  Created by aBoelghet  on 14/08/2023.
//

import Foundation

protocol HomeViewModelDelegate {
    
}

class HomeViewModel {
    
    var delegate: HomeViewModelDelegate?
    
    
    init(delegate:HomeViewModelDelegate) {
        self.delegate = delegate
    }

    
   
    
    
    
}
