//
//  WebServices.swift
//  CaptinApp
//
//  Created by Eman Gaber on 26/01/2021.
//  Copyright © 2021 Drovox Company. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class WebServices {
    
    //MARK: ----- Home -----
    class func getDataApi(parameters: [String : Any], completionHundler: @escaping (GeneralRespone?,String?) -> Void){
        NetworkRequest.Request( url: APIs.Instance.getDataUrl(), method: .get, parameters: parameters, headers: nil){
            response , error in
            
            if response == nil && error == nil{
                completionHundler(nil,nil)
            }else{
                if error == nil {
                    do {
                        let parsedResult = try JSONDecoder().decode(GeneralRespone?.self,from:(response?.data)!)
                        
                        if parsedResult?.status == "error"
                        {
                            completionHundler(nil,parsedResult?.status)
                            
                        }else
                        {
                            completionHundler(parsedResult,nil)
                        }
                    }catch{
                        print (error)
                        completionHundler(nil, error.localizedDescription)
                        
                    }
                }else{
                    print("error area busy in method")
                    completionHundler(nil, error)
                }
            }
        }
    }
    
    
}
