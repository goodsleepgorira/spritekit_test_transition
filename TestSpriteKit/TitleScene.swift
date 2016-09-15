//
//  TitleScene.swift
//

import Foundation
import SpriteKit

class TitleScene:SKScene {

    //現在シーン設定時の呼び出しメソッド
    override func didMoveToView(view: SKView) {
        
        //画面サイズを合わせる
        self.scaleMode = .AspectFit
    }
    
    //画面タッチ時の呼び出しメソッド
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

        //タッチしたノードを取得する。
        let location = touches.first!.locationInNode(self)
        if let node = nodeAtPoint(location) as? SKLabelNode {

            //タッチしたのがラベルノードの場合、スタートボタンなのかを確認する。
            let startButton = self.childNodeWithName("start") as? SKLabelNode
            if(node == startButton) {

                //スタートボタンを押した場合はプレイ画面に切り替える。
                let result = PlayScene(fileNamed: "PlayScene")
                self.view!.presentScene(result)
            }

        }
    }
}
