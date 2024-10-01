//
//  LoadingIndicator.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/01.
//

import Foundation
import UIKit

extension UIViewController{
    
    func showLoadingIndicator(){
        let loadingView = UIView(frame: UIWindow().bounds)
        loadingView.backgroundColor = UIColor(white: 0, alpha: 0.75)
        loadingView.tag = 10
        
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.center = loadingView.center
        indicator.color = Col.base
        indicator.startAnimating()
        
        loadingView.addSubview(indicator)
        UIWindow().addSubview(loadingView)
    }
    
    func stopLoadingIndicator(){
        if let loadingView = view.viewWithTag(10){
            loadingView.removeFromSuperview()
        }
    }
}
