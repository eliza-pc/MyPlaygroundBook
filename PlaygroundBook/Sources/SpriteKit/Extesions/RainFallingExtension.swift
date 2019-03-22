//
//  RainFallingExtension.swift
//  Book_Sources
//
//  Created by Eliza Maria Porto de Carvalho on 22/03/19.
//

import Foundation
import SpriteKit


extension Array where Element == SKTexture {
    
    public static let piscando: [SKTexture] = [
        
        SKTexture(imageNamed: "chuva_anim/chuva1"),
        SKTexture(imageNamed: "chuva_anim/chuva2"),
        SKTexture(imageNamed: "chuva_anim/chuva3"),
        SKTexture(imageNamed: "chuva_anim/chuva4"),
        SKTexture(imageNamed: "chuva_anim/chuva5"),
        SKTexture(imageNamed: "chuva_anim/chuva6"),
        SKTexture(imageNamed: "chuva_anim/chuva7"),
        SKTexture(imageNamed: "chuva_anim/chuva8"),
        SKTexture(imageNamed: "chuva_anim/chuva9"),
        SKTexture(imageNamed: "chuva_anim/chuva10"),
        
    ]
    
    
    public static let dicTextures: [String: [SKTexture]] = [
        
        "piscando": Array.piscando
        
    ]
    
}


