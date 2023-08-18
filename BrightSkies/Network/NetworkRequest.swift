//
//  NetworkRequest.swift
//  CaptinApp
//
//  Created by Eman Gaber on 26/01/2021.
//  Copyright © 2021 Drovox Company. All rights reserved.
//

import Foundation
import Alamofire

class NetworkRequest{
    class func Request(url : String, method: HTTPMethod, parameters: [String : Any]?, headers: HTTPHeaders?, encoding: ParameterEncoding = URLEncoding.default, completionHundler: @escaping (DataResponse<Any, AFError>? ,String?)->Void) {
        
        AF.request(url, method: method, parameters: parameters, encoding: encoding, headers: headers).responseJSON { (response:DataResponse) in
            
            switch(response.result) {
            case .success(let value):
                print(value)
                //print(response.response)
                let temp = response.response?.statusCode ?? 400
                print(temp)
                if temp == 401
                {
                    // token expire
                    
                    completionHundler(nil,"Unauthenticated")
                    
                }else
                {
                    completionHundler(response,nil)
                    
                }
                
                print(response.data!)
            case .failure(let error):
                
             
                print(error.localizedDescription)
                completionHundler(nil,error.localizedDescription)
                
                break
            }
        }
    }
    
}
