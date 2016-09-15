//
//  ResultScene.swift
//

import Foundation
import SpriteKit

class ResultScene:SKScene {
   var score:Int = 0
   
    //現在シーン設定時の呼び出しメソッド
    override func didMoveToView(view: SKView) {

        //スコアラベルにスコアを表示する。
        let scoreLabel = self.childNodeWithName("score") as? SKLabelNode
        scoreLabel?.text = "\(score)点"
    }
}
