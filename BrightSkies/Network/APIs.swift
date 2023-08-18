//
//  APIs.swift
//  expression
//
//Created by Ahmad Aboelghet on 15/08/2031.
//

import Foundation
import Alamofire

class APIs {
    static let Instance = APIs()
    private init() {}
    
    //online
    private let baseUrl = "https://newsapi.org/v2/"
    
    
    //MARK: Home
    
    public func getDataUrl() -> String {
        return baseUrl + "top-headlines"
    }
    
    
    
    
}
