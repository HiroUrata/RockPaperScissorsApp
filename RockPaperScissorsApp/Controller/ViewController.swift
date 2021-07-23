//
//  ViewController.swift
//  RockPaperScissorsApp
//
//  Created by UrataHiroki on 2021/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enemyView: UIView!
    @IBOutlet weak var enemyProgressView: UIProgressView!
    @IBOutlet weak var enemyImageView: UIImageView!
    @IBOutlet weak var enemyMoveLabel: UILabel!
    
    @IBOutlet weak var gameResultLabel: UILabel!
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myLogLabel: UILabel!
    @IBOutlet weak var myprogreeView: UIProgressView!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var scissorButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    
    let enemyResultModel = EnemyResultModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        enemyView.layer.cornerRadius = 15.0
        enemyProgressView.progress = 1
        enemyProgressView.progressViewStyle = .bar
        enemyProgressView.backgroundColor = .white
        enemyProgressView.progressTintColor = .systemGreen
        
        myView.layer.cornerRadius = 15.0
        myprogreeView.progress = 1
        myprogreeView.progressViewStyle = .bar
        myprogreeView.backgroundColor = .white
        myprogreeView.progressTintColor = .systemGreen
    
        gameResultLabel.text = ""
    }

    @IBAction func rock(_ sender: Any) {
        
        enemyResultModel.enemyMove()
        
        if enemyResultModel.enemyMoveResult == "Scissor"{
            
            enemyMoveLabel.text = "Scissor"
            
            gameResultLabel.text = "Win"
            
            enemyProgressView.setProgress(enemyProgressView.progress - 0.2, animated: true)
            
            myLogLabel.text = "相手にダメージを与えました"
            
            if enemyProgressView.progress == 0{
                
                gameResultLabel.text = "Winner"
                CheckAlert()
                
            }
            
        }else if enemyResultModel.enemyMoveResult == "Paper"{
            
            enemyMoveLabel.text = "Paper"
            
            gameResultLabel.text = "Lose"
            
            myprogreeView.setProgress(myprogreeView.progress - 0.2, animated: true)
            
            myLogLabel.text = "ダメージを受けました"
            
            if myprogreeView.progress == 0{
                
                gameResultLabel.text = "Loser"
                CheckAlert()
                
            }
            
        }else{
            
            enemyMoveLabel.text = "Rock"
            gameResultLabel.text = "Same"
            
        }
        
        
    }
    
    
    
    @IBAction func scissor(_ sender: Any) {
        
        enemyResultModel.enemyMove()
        
        if enemyResultModel.enemyMoveResult == "Paper"{
            
            enemyMoveLabel.text = "Paper"
            
            gameResultLabel.text = "Win"
            
            enemyProgressView.setProgress(enemyProgressView.progress - 0.2, animated: true)
            
            myLogLabel.text = "相手にダメージを与えました"
            
            if enemyProgressView.progress == 0{
                
                gameResultLabel.text = "Winner"
                CheckAlert()
                
            }
            
        }else if enemyResultModel.enemyMoveResult == "Rock"{
            
            enemyMoveLabel.text = "Rock"
            
            gameResultLabel.text = "Lose"
            
            myprogreeView.setProgress(myprogreeView.progress - 0.2, animated: true)
            
            myLogLabel.text = "ダメージを受けました"
            
            if myprogreeView.progress == 0{
                
                gameResultLabel.text = "Loser"
                CheckAlert()
                
            }
            
        }else{
            
            enemyMoveLabel.text = "Scissor"
            gameResultLabel.text = "Same"
            
        }
        
        
    }
    
    @IBAction func paper(_ sender: Any) {
        
        enemyResultModel.enemyMove()
        
        if enemyResultModel.enemyMoveResult == "Rock"{
            
            enemyMoveLabel.text = "Rock"
            
            gameResultLabel.text = "Win"
            
            enemyProgressView.setProgress(enemyProgressView.progress - 0.2, animated: true)
            
            myLogLabel.text = "相手にダメージを与えました"
            
            if enemyProgressView.progress == 0{
                
                gameResultLabel.text = "Winner"
                CheckAlert()
                
            }
            
        }else if enemyResultModel.enemyMoveResult == "Scissor"{
            
            enemyMoveLabel.text = "Scissor"
            
            gameResultLabel.text = "Lose"
            
            myprogreeView.setProgress(myprogreeView.progress - 0.2, animated: true)
            
            myLogLabel.text = "ダメージを受けました"
            
            if myprogreeView.progress == 0{
                
                gameResultLabel.text = "Loser"
                CheckAlert()
                
            }
            
        }else{
            
            enemyMoveLabel.text = "Paper"
            gameResultLabel.text = "Same"
            
        }

        
    }
    
    
    
}


extension ViewController{
    
    func CheckAlert(){
        
        let alert = UIAlertController(title: "確認", message: "もう一度遊びますか？", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "もう一度", style: .default, handler: { [self] _ in
            
            enemyProgressView.progress = 1
            myprogreeView.progress = 1
            
            myLogLabel.text = "もう一度遊びます"
            gameResultLabel.text = "ReStart"
            enemyMoveLabel.text = ""
            
        }))
        
        present(alert, animated: true, completion: nil)
        
    }
    
}

