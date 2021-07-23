//
//  enemyResultModel.swift
//  RockPaperScissorsApp
//
//  Created by UrataHiroki on 2021/07/23.
//

import Foundation
import UIKit

class EnemyResultModel{
    
    let enemyMeansArray = ["Rock","Scissor","paper"]
    
    var enemyMoveResult = String()
    
    func enemyMove(){
        
        enemyMoveResult = enemyMeansArray.randomElement()!
        print(enemyMeansArray)
    }
    
    //
}
