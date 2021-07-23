//
//  AlertModel.swift
//  RockPaperScissorsApp
//
//  Created by UrataHiroki on 2021/07/23.
//

import Foundation

import UIKit


class AlertModel:UIViewController{
    
    func CheckAlert(targetView:UIViewController){
        
        let alert = UIAlertController(title: "確認", message: "もう一度遊びますか？", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "もう一度", style: .default, handler: { _ in
            
            
            
        }))
        
    }
    
    
}
