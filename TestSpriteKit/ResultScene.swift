//
//  ResultScene.swift
//

import Foundation
import SpriteKit

class ResultScene:SKScene {
   var score:Int = 0
   
    //現在シーン設定時の呼び出しメソッド
    override func didMoveToView(view: SKView) {
        print(score)
    }
}
