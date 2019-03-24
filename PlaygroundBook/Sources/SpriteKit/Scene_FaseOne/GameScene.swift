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
    
    
    var carbonoParaEsquerdaF1: SKSpriteNode!
    var carbonoParaCimaFactoryF1: SKSpriteNode!
    var carbonoParaBaixoF1: SKSpriteNode!
    var carbonoParaCimaF1: SKSpriteNode!
    var foodSun: SKSpriteNode!
    var foodWater: SKSpriteNode!
    var foodCarbon: SKSpriteNode!
    var nuvem: SKSpriteNode!
    
    let fade = SKAction.fadeAlpha(to: 1, duration: 1.0)
    
    
    override public func didMove(to view: SKView) {
        super.didMove(to: view)
        
//MARK: GameScene Elements
     
        nuvem = self.childNode(withName: "Nuvem") as? SKSpriteNode
        nuvem.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["nuvemPassando"]!, timePerFrame: 0.8)))
        
        
        carbonoParaEsquerdaF1 = self.childNode(withName: "CarbonoParaEsquerdaF1") as? SKSpriteNode
        carbonoParaEsquerdaF1?.alpha = 0
        
        carbonoParaCimaFactoryF1 = self.childNode(withName: "CarbonoParaCimaFactoryF1") as? SKSpriteNode
        carbonoParaCimaFactoryF1?.alpha = 0
        
        carbonoParaBaixoF1 = self.childNode(withName: "CarbonoParaBaixoF1") as? SKSpriteNode
        carbonoParaBaixoF1?.alpha = 0
        
        foodSun = self.childNode(withName: "FoodSun") as? SKSpriteNode
        foodSun?.alpha = 0
        
        foodWater = self.childNode(withName: "FoodWater") as? SKSpriteNode
        foodWater?.alpha = 0
        
        foodCarbon = self.childNode(withName: "FoodCarbon") as? SKSpriteNode
        foodCarbon?.alpha = 0
        
     
//MARK: User Interaction
        
        
        if firstPhotosintesisElement == .water{
            foodWater?.run(fade)
        }
        if secondPhotosintesisElement == .lightEnergy{
            foodSun?.run(fade)
        }
        if thirdPhotosintesisElement == .carbonDioxide{
            foodCarbon?.run(fade)
        }
        
        if firstStepOfCarbonTo == .goToAtsmosphere{
            carbonoParaCimaFactoryF1?.run(fade)
           
        }
        if secondStepOfCarbonTo == .goToPlants{
            carbonoParaEsquerdaF1?.run(fade)
            carbonoParaBaixoF1?.run(fade)
        }
        
        
        
    }
    
    
//MARK: Funções
    
    func getNode(withName name: String )-> SKSpriteNode? {
        let node = self.childNode(withName: name) as? SKSpriteNode
        
        return node
    }
    
  
}
