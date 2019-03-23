//
//  FaseThreeScene.swift
//  Book_Sources
//
//  Created by Eliza Maria Porto de Carvalho on 21/03/19.
//


import Foundation
import SpriteKit

public class FaseThreeScene: SKScene {
    
    var carbonoParaEsquerdaF3: SKSpriteNode!
    var carbonoParaBaixoF3: SKSpriteNode!
    
     let fade = SKAction.fadeAlpha(to: 1, duration: 2.0)
    
    override public func didMove(to view: SKView) {
        
        let fase3 = self.getNode(withName: "Fase3")
        fase3!.texture = SKTexture.init(imageNamed: "fase3")
        
        carbonoParaEsquerdaF3 = self.childNode(withName: "CarbonoParaEsquerdaF3") as? SKSpriteNode
        carbonoParaEsquerdaF3?.alpha = 0
        
       carbonoParaBaixoF3 = self.childNode(withName: "carbonoParaBaixoF3") as? SKSpriteNode
        carbonoParaBaixoF3?.alpha = 0
        
        if PassCarbonDioxide == .plants{
            
            carbonoParaBaixoF3?.run(fade)
            carbonoParaEsquerdaF3?.run(fade)
            
        }
        
    }
    
    
    func getNode(withName name: String )-> SKSpriteNode? {
        let node = self.childNode(withName: name) as? SKSpriteNode
        return node
    }
    
}
