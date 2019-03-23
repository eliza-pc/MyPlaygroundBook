//
//  GameScene.swift
//  Book_Sources
//
//  Created by Eliza Maria Porto de Carvalho on 21/03/19.
//


import Foundation
import SpriteKit

public class GameScene: SKScene {
    
//MARK: Variables
    
    var gotas: SKSpriteNode!
    var co2Group: SKSpriteNode!
    var sunGroup: SKSpriteNode!
    
    let fade = SKAction.fadeAlpha(to: 1, duration: 2.0)
    
    
    override public func didMove(to view: SKView) {
        super.didMove(to: view)
        
//MARK: GameScene Elements
     
        //        let fase1 = self.getNode(withName: "Fase1")
        //        //fase1!.texture = SKTexture.init(imageNamed: "fase1")

        co2Group = self.childNode(withName: "co2Group") as? SKSpriteNode
        co2Group?.alpha = 0
        
        sunGroup = self.childNode(withName: "sunGroup") as? SKSpriteNode
        sunGroup?.alpha = 0
       
        gotas = self.childNode(withName: "gota") as? SKSpriteNode
        
//MARK: User Interaction
        
        if Elemento == .water{

            gotas!.alpha = 1
            gotas.run(SKAction.repeat(SKAction.animate(with: Array.dicTextures["piscando"]!, timePerFrame: 0.3), count: 1))

        }else{

            gotas!.alpha = 0

        }
        
        if Elemento == .carbondioxide{
            
            co2Group?.run(fade)
            
        }
        
        if Elemento == .lightEnergy{
            
           sunGroup?.run(fade)
            
        }
        
    }
    
    
//MARK: Funções
    
    func getNode(withName name: String )-> SKSpriteNode? {
        let node = self.childNode(withName: name) as? SKSpriteNode
        
        return node
    }
    
  
}
