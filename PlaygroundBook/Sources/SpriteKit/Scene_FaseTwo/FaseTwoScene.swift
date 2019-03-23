//
//  FaseTwoScene.swift
//  Book_Sources
//
//  Created by Eliza Maria Porto de Carvalho on 21/03/19.
//


import Foundation
import SpriteKit

public class FaseTwoScene: SKScene {
    
    
    var carbonoParaCimaF2: SKSpriteNode!
    var carbonoParaBaixoF2: SKSpriteNode!
    var carbonoParaDireitaF2: SKSpriteNode!
    var cowFood: SKSpriteNode!
    var humanFood: SKSpriteNode!
    
    let fade = SKAction.fadeAlpha(to: 1, duration: 2.0)
    
    override public func didMove(to view: SKView) {
        
        let fase2 = self.getNode(withName: "Fase2")
        fase2!.texture = SKTexture.init(imageNamed: "fase2")
        
//MARK: Scene Elements
        
        carbonoParaCimaF2 = self.childNode(withName: "CarbonoParaCimaF2") as? SKSpriteNode
        carbonoParaCimaF2?.alpha = 0
        
        carbonoParaBaixoF2 = self.childNode(withName: "CarbonoParaBaixoF2") as? SKSpriteNode
        carbonoParaBaixoF2?.alpha = 0
        
        carbonoParaDireitaF2 = self.childNode(withName: "CarbonoParaDireitaF2") as? SKSpriteNode
        carbonoParaDireitaF2?.alpha = 0
        
        cowFood = self.childNode(withName: "CowFood") as? SKSpriteNode
        cowFood?.alpha = 0
        
        humanFood = self.childNode(withName: "HumanFood") as? SKSpriteNode
        humanFood?.alpha = 0
 
//MARK Users Interactions
        
        if FeedBeings == .human{
            humanFood?.run(fade)
        }
        if FeedBeings == .cow{
            cowFood?.run(fade)
            carbonoParaDireitaF2?.run(fade)
        }
        
        if PassCarbonDioxide == .atmosphere{
            carbonoParaCimaF2?.run(fade)
        }
        
        if PassCarbonDioxide == .plants{
            carbonoParaBaixoF2?.run(fade)
        }

    }
    
    
    func getNode(withName name: String )-> SKSpriteNode? {
        let node = self.childNode(withName: name) as? SKSpriteNode
        return node
    }
}

