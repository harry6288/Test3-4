//
//  GameScene.swift
//  Test34-S19
//
//  Created by MacStudent on 2019-06-19.
//  Copyright © 2019 rabbit. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var nextLevelButton:SKLabelNode!
    var xd: CGFloat = 0
    var yd: CGFloat = 0
    
    var LEG = SKSpriteNode(imageNamed: "leg")
     var Hair1 = SKSpriteNode(imageNamed: "hair1")
     var Hair2 = SKSpriteNode(imageNamed: "hair2")
     var Hair3 = SKSpriteNode(imageNamed: "hair3")
    
    
    
    override func didMove(to view: SKView) {
        print("This is level 1")
        self.nextLevelButton = self.childNode(withName: "nextLevelButton") as! SKLabelNode
   
        
    
    
    
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    private var currentNode: SKNode?
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            let location = touch.location(in: self)
            let touchesNodes = self.nodes(at: location)
            for node in touchesNodes.reversed(){
                if node.name == "hair1" {
                    self.currentNode = node
                    node.removeFromParent()
                
            }
        
            }
            
        }
        
        func touchesMoves(_touches: Set<UITouch>, with event: UIEvent?){
                if let touch = touches.first, let node = self.currentNode {
                    let touchLocation = touch.location(in: self)
                    node.position = touchLocation
            }
            
            func touchesEnded(_touches:Set<UITouch>, with event: UIEvent?){
                if SKNode().name == "hair2"
                {
                    self.currentNode = Hair2
                }
                func touchesCancelled(_touches:Set<UITouch>, with event: UIEvent?){
                self.currentNode = Hair2
                }
       

    }
}
}
}
