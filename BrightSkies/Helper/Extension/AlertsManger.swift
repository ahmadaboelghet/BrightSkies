//
//  AlertsManger.swift
//  BrightSkies
//
//  Created by Ahmad Aboelghet on 8/13/23.
//  Copyright © 2023 Ahmad Aboelghet. All rights reserved.
//

import Foundation
import UIKit

class AlertsManager {
    
    //=================
    // MARK: Show Alert
    //=================
    static func showAlert(withTitle title: String?,
        message: String?,
        viewController: UIViewController?,
        showingCancelButton: Bool = false,
        showingOkButton: Bool = true,
        cancelHandler: ((UIAlertAction) -> Void)? = nil,
        actionTitle: String = "Ok",
        actionStyle: UIAlertAction.Style = .default,
        actionHandler: ((UIAlertAction) -> Void)? = nil)
    {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)

        if showingOkButton {
        let okAction = UIAlertAction(title: actionTitle, style: actionStyle, handler: actionHandler)
        alertController.addAction(okAction)
        }
        else
        {// auto hide
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                alertController.dismiss(animated: true, completion: nil)
            }
        }
        if showingCancelButton {
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: cancelHandler)
            alertController.addAction(cancelAction)
        }

        if let presentingVC = viewController {
            presentingVC.present(alertController, animated: true, completion: nil)
        }
    }
}
