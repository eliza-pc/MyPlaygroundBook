//
//  FaseTwoScene.swift
//  Book_Sources
//
//  Created by Eliza Maria Porto de Carvalho on 21/03/19.
//


import Foundation
import SpriteKit

public class FaseTwoScene: SKScene {
    
    override public func didMove(to view: SKView) {
        
        let fase2 = self.getNode(withName: "Fase2")
        fase2!.texture = SKTexture.init(imageNamed: "fase2")
        
    }
    
    
    func getNode(withName name: String )-> SKSpriteNode? {
        let node = self.childNode(withName: name) as? SKSpriteNode
        return node
    }
}

