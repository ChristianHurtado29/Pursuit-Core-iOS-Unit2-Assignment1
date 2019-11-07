//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit
@available(iOS 13.0, *)
class ViewController: UIViewController {

var turnCount = 1
    
    @IBOutlet weak var playerTurn: UILabel!
    
    @IBOutlet var gameButton: [UIButton]!
    
    var pressedButtonsMatrix:[[String]] = [["1","2","3"],
                                           ["4","5","6"],
                                           ["7","8","9"]
    ]
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    
    @IBAction func gameButtonPressed(_ gameButtonAction: GameButton) {
        
        print("The button at \(gameButtonAction.row), \(gameButtonAction.col) was picked")
        
        if turnCount % 2 != 0 {
            playerTurn.text = "Turn: Player 2"
                gameButtonAction.setImage(UIImage(systemName:"xmark"), for: .normal)
            turnCount += 1
            pressedButtonsMatrix[gameButtonAction.row][gameButtonAction.col] = "X"
            
            print(pressedButtonsMatrix)
            } else {
            playerTurn.text = "Turn: Player 1"
                gameButtonAction.setImage(UIImage(systemName:"circle"), for: .normal)
            turnCount += 1
            pressedButtonsMatrix[gameButtonAction.row][gameButtonAction.col] = "O"
            
            print(pressedButtonsMatrix)
        }
        
        gameWinner()
}
    
    func gameWinner(){
        outerloop: for i in 0..<pressedButtonsMatrix.count {
          let currentValue = pressedButtonsMatrix[i].first ?? "?"
          innerloop: for j in 0..<pressedButtonsMatrix.count {
            if currentValue != pressedButtonsMatrix[i][j] {
                print("Current \(currentValue) pressed\(pressedButtonsMatrix[i][j])")
              continue outerloop
            }
            //print("\(tictactoe[i][j])", terminator: " ")
          }
            
            playerTurn.text = "Winner at \(i)"
          print("we have a winner at \(i) row")
          print()
          
        }
        
        sideloop: for i in 0..<pressedButtonsMatrix.count {
            let currentValue = pressedButtonsMatrix[i].last ?? "?"
            innersides: for j in 0..<pressedButtonsMatrix.count {
                if currentValue != pressedButtonsMatrix[j][i]{
                     print("thing Current \(currentValue) pressed\(pressedButtonsMatrix[i][j])")
                    continue sideloop
                }
            }
            playerTurn.text = "Winner at \(i) col"
                     print("we have a winner at \(i)col")
                     print()
                     break
        }
//        for _ in thirdInnerLine{
//            if thirdInnerLine[0] == thirdInnerLine[1] && thirdInnerLine[2] == thirdInnerLine[0]{
//                playerTurn.text = "Yay 3!"
//            }
//        }
        sideloop: for i in 0..<pressedButtonsMatrix.count {
            let currentValue = pressedButtonsMatrix[i][1] ?? "?"
            innersides: for j in 0..<pressedButtonsMatrix.count {
                if currentValue != pressedButtonsMatrix[j][i]{
                     print("thing Current \(currentValue) pressed\(pressedButtonsMatrix[i][j])")
                    continue sideloop
                }
            }
            playerTurn.text = "Winner at \(i) col"
                     print("we have a winner at \(i)col")
                     print()
                     break
        }
        }
}


//func enableButtons(_ isEnabled: Bool) {
//    if isEnabled {
//        gameButtonAction.alpha = 1.0
//    } else {
//        gameButtonAction.alpha = 1.0
//    }
//
//}

//let firstInnerLine = pressedButtonsMatrix[0]
//let secondInnerLine = pressedButtonsMatrix[1]
//let thirdInnerLine = pressedButtonsMatrix[2]
//
//
//for _ in firstInnerLine{
//        if firstInnerLine[0] == firstInnerLine[1] && firstInnerLine[2] == firstInnerLine[0] {
//            print("Hey im here!")
//            playerTurn.text = "Yay!"
//        }
//    continue
//    }
//for _ in secondInnerLine{
//    if secondInnerLine[0] == secondInnerLine[1] && secondInnerLine[2] == secondInnerLine[0] {
//        print("Hey the second thing happened")
//        playerTurn.text = "Yes!"
//    }
//    continue
//}
//for _ in thirdInnerLine{
//    if thirdInnerLine[0] == thirdInnerLine[1] && thirdInnerLine[2] == thirdInnerLine[1]{
//        print("Third thing happened!")
//        playerTurn.text = "Yes!!"
//    }
//}
