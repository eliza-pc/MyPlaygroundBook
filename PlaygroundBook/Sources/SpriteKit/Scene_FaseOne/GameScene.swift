//
//  gameSceneClass.swift
//  Book_Sources
//
//  Created by Eliza Maria Porto de Carvalho on 20/03/19.
//

import Foundation
import SpriteKit

public class GameScene: SKScene {
    override public func didMove(to view: SKView) {
        
        let fase1 = self.getNode(withName: "Fase1")
        fase1!.texture = SKTexture.init(imageNamed: "fase1")
    
    }
    
    
    func getNode(withName name: String )-> SKSpriteNode? {
        let node = self.childNode(withName: name) as? SKSpriteNode
        return node
    }
    
}
    
    

