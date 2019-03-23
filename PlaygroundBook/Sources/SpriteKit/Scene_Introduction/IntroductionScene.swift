//
//  IntroductionScene.swift
//  Book_Sources
//
//  Created by Eliza Maria Porto de Carvalho on 21/03/19.
//


import Foundation
import SpriteKit

public class IntroductionScene: SKScene {
    
    var co2Anim: SKSpriteNode!
    
    override public func didMove(to view: SKView) {
        
        co2Anim  = self.childNode(withName: "co2Anim") as? SKSpriteNode
        co2Anim.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["co2Flutuando"]!, timePerFrame: 0.8)))
    
    }
    
    func getNode(withName name: String )-> SKSpriteNode? {
        let node = self.childNode(withName: name) as? SKSpriteNode
        return node
    }

}

