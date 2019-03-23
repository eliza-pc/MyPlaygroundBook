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
    
    let fade = SKAction.fadeAlpha(to: 1, duration: 2.0)
    
    
    override public func didMove(to view: SKView) {
        super.didMove(to: view)
        
//MARK: GameScene Elements
     
        //        let fase1 = self.getNode(withName: "Fase1")
        //        //fase1!.texture = SKTexture.init(imageNamed: "fase1")

//        co2Group = self.childNode(withName: "co2Group") as? SKSpriteNode
//        co2Group?.alpha = 0
//
//        sunGroup = self.childNode(withName: "sunGroup") as? SKSpriteNode
//        sunGroup?.alpha = 0
//
//        gotas = self.childNode(withName: "gota") as? SKSpriteNode
//
        carbonoParaEsquerdaF1 = self.childNode(withName: "CarbonoParaEsquerdaF1") as? SKSpriteNode
        carbonoParaEsquerdaF1?.alpha = 0
        
        carbonoParaCimaFactoryF1 = self.childNode(withName: "carbonoParaCimaFactoryF1") as? SKSpriteNode
        carbonoParaCimaFactoryF1?.alpha = 0
        
        carbonoParaBaixoF1 = self.childNode(withName: "CarbonoParaBaixoF1") as? SKSpriteNode
        carbonoParaBaixoF1?.alpha = 0
        
        carbonoParaCimaF1 = self.childNode(withName: "CarbonoParaCimaF1") as? SKSpriteNode
        carbonoParaCimaF1?.alpha = 0
        
        
        
        
        foodSun = self.childNode(withName: "FoodSun") as? SKSpriteNode
        foodSun?.alpha = 0
        
        foodWater = self.childNode(withName: "FoodWater") as? SKSpriteNode
        foodWater?.alpha = 0
        
        foodCarbon = self.childNode(withName: "FoodCarbon") as? SKSpriteNode
        foodCarbon?.alpha = 0
        
        
        
        
//MARK: User Interaction
        
//        if FeedPlantsWith == .water{
//
//            gotas!.alpha = 1
//            gotas.run(SKAction.repeat(SKAction.animate(with: Array.dicTextures["piscando"]!, timePerFrame: 0.3), count: 1))
//
//        }else{
//
//            gotas!.alpha = 0
//
//        }
//
//
//        if FeedPlantsWith == .lightEnergy{
//            foodSun?.run(fade)
//        }
//        if FeedPlantsWith == .water{
//            foodWater?.run(fade)
//        }
//        if FeedPlantsWith == .carbondioxide{
//           foodCarbon?.run(fade)
//        }
//
//        if PassCarbonDioxide == .atmosphere{
//            carbonoParaCimaF1?.run(fade)
//            carbonoParaCimaFactoryF1?.run(fade)
//        }
//        if PassCarbonDioxide == .plants{
//            carbonoParaBaixoF1?.run(fade)
//            carbonoParaEsquerdaF1.run(fade)
//        }
        
        if firstFotossinteseElement == .water{
            foodWater?.run(fade)
        }
        if secondFotossinteseElement == .lightEnergy{
            foodSun?.run(fade)
        }
        if thirdFotossinteseElement == .carbonDioxide{
            foodCarbon?.run(fade)
        }
        
        if firstStepOfCarbonTo == .goToAtsmosphere{
            carbonoParaCimaFactoryF1?.run(fade)
            carbonoParaCimaF1?.run(fade)
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
