//
//  IntroductionScene.swift
//  Book_Sources
//
//  Created by Eliza Maria Porto de Carvalho on 21/03/19.
//


import Foundation
import SpriteKit

public class IntroductionScene: SKScene {
    
    override public func didMove(to view: SKView) {
        
        let mrCo2 = self.getNode(withName: "MrCO2")
        mrCo2!.texture = SKTexture.init(imageNamed: "co2")
        
        
    }
    
    
    func getNode(withName name: String )-> SKSpriteNode? {
        let node = self.childNode(withName: name) as? SKSpriteNode
        return node
    }
    
}

