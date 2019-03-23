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
    
    public static let nuvemPassando: [SKTexture] = [
        
        SKTexture(imageNamed: "animacao_nuvem/nuvem1"),
        SKTexture(imageNamed: "animacao_nuvem/nuvem2"),
        SKTexture(imageNamed: "animacao_nuvem/nuvem3"),
        SKTexture(imageNamed: "animacao_nuvem/nuvem4"),
        SKTexture(imageNamed: "animacao_nuvem/nuvem5"),
        SKTexture(imageNamed: "animacao_nuvem/nuvem6"),
        SKTexture(imageNamed: "animacao_nuvem/nuvem7"),
        SKTexture(imageNamed: "animacao_nuvem/nuvem8"),
        SKTexture(imageNamed: "animacao_nuvem/nuvem9"),
        SKTexture(imageNamed: "animacao_nuvem/nuvem10"),
        
        ]
    
    public static let co2Flutuando: [SKTexture] = [
        
        SKTexture(imageNamed: "anima_carbono/anima1"),
        SKTexture(imageNamed: "anima_carbono/anima2"),
        SKTexture(imageNamed: "anima_carbono/anima3"),
        SKTexture(imageNamed: "anima_carbono/anima4"),
        SKTexture(imageNamed: "anima_carbono/anima5"),
        
        ]
    
    
    public static let dicTextures: [String: [SKTexture]] = [
        
        "piscando": Array.piscando,
        "nuvemPassando": Array.nuvemPassando,
        "co2Flutuando": Array.co2Flutuando,
        
        
    ]
    
 
    
}


