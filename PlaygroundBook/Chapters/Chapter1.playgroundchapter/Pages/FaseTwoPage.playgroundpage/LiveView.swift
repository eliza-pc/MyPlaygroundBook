//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  Instantiates a live view and passes it to the PlaygroundSupport framework.
//

import SpriteKit
import PlaygroundSupport

let frame = CGRect.init(x: 0, y: 0, width: 680, height: 480)
let view = SKView.init(frame: frame)

if let scene = FaseTwoScene(fileNamed: "FaseTwoScene"){
    scene.scaleMode = .aspectFill
    
    view.presentScene(scene)
}

//TESTE
PlaygroundPage.current.liveView = view