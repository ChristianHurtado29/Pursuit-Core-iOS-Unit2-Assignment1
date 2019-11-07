//
//  GameButton.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class GameButton: UIButton {
  @IBInspectable var row: Int = 0// giving interface builder it has a class called game buttton, it sees this, now recognizes this game button has extra properties/ attributes, want it to tell us what row and column, this gives us the info we need to know where the user clicked, when we drag it, we should change the calss to GameButton, GameButton.row, GameButton.column
  @IBInspectable var col: Int = 0
}
