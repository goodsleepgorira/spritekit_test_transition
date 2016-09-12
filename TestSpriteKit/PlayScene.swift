//
//  PlayScene.swift
//

import Foundation
import SpriteKit

class PlayScene:SKScene, SKPhysicsContactDelegate {

    var startDate:NSDate!
    var birdNode:SKSpriteNode!

    
    //現在シーン設定時の呼び出しメソッド
    override func didMoveToView(view: SKView) {
        
        //画面端に物理ボディを設定する。
        self.physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)

        //鳥ノードを取得する。
        birdNode = self.childNodeWithName("bird_brown") as? SKSpriteNode
        
        //カテゴリマスクを設定する。
        self.physicsBody?.categoryBitMask = 0b0001

        //デリゲート先を自分に設定する。
        self.physicsWorld.contactDelegate = self
    }



    //画面タッチ開始時の呼び出しメソッド
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

        //タップ開始日時を取得する。
        startDate = NSDate()
    }



    //画面タッチ移動時の呼び出しメソッド
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {

        //タッチした位置まで移動するアクションを作成する。
        let location = touches.first!.locationInNode(self)
        let action = SKAction.moveTo(CGPoint(x:location.x, y:location.y + 20), duration:0.1)

        //アクションを実行する。
        birdNode!.runAction(action)
    }


    //画面タッチ終了時の呼び出しメソッド
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {

        //重力の影響を受けるようにする。
        birdNode.physicsBody?.affectedByGravity = true
   }

    
    //衝突検知時の呼び出しメソッド
    func didBeginContact(contact: SKPhysicsContact) {
        print("衝突しました")
    }
}