//
//  FaseThreeScene.swift
//  Book_Sources
//
//  Created by Eliza Maria Porto de Carvalho on 21/03/19.
//


import Foundation
import SpriteKit

public class FaseThreeScene: SKScene {
    
    override public func didMove(to view: SKView) {
        
        let fase3 = self.getNode(withName: "Fase3")
        fase3!.texture = SKTexture.init(imageNamed: "fase3")
        
    }
    
    
    func getNode(withName name: String )-> SKSpriteNode? {
        let node = self.childNode(withName: name) as? SKSpriteNode
        return node
    }
    
}
