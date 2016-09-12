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
        print("タップしました。")
    }
}
