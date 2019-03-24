//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  Provides supporting functions for setting up a live view.
//

import UIKit
import PlaygroundSupport
import SpriteKit

/// Instantiates a new instance of a live view.
///
/// By default, this loads an instance of `LiveViewController` from `LiveView.storyboard`.



//MARK: FaseOne_Elements
//public var FeedPlantsWith: elemento = .treeFood
public var PassCarbonDioxide: passCarbon = .carbonDioxideTravel


public var firstPhotosintesisElement: FirstFotossinteseElement = .treeFood
public var secondPhotosintesisElement: SecondFotossinteseElement = .treeFood
public var thirdPhotosintesisElement: ThirdFotossinteseElement = .treeFood
public var firstStepOfCarbonTo: FirstStepOfCarbonTo = .goSomewhere
public var secondStepOfCarbonTo: SecondStepOfCarbonTo = .goSomewhere


//MARK: FaseTwo_Elements

//public var FeedBeings: feedBeings = .species
public var feedHumanWith: FeedHumanWith = .someFood
public var feedCowWith: FeedCowWith = .someFood
public var thirdStepOfCarbon: ThirdStepOfCarbon = .goSomewhere

//MARK: FaseThree_Elements
public var fourthStepOfCarbon: FourthStepOfCarbon = .goSomewhere
public var fifhtStepOfCarbon: FifhtStepOfCarbon = .goSomewhere


public func instantiateLiveView() -> PlaygroundLiveViewable {
    let storyboard = UIStoryboard(name: "LiveView", bundle: nil)

    guard let viewController = storyboard.instantiateInitialViewController() else {
        fatalError("LiveView.storyboard does not have an initial scene; please set one or update this function")
    }

    guard let liveViewController = viewController as? LiveViewController else {
        fatalError("LiveView.storyboard's initial scene is not a LiveViewController; please either update the storyboard or this function")
    }

    return liveViewController
}

public func returnGameScene () -> SKView {
    // Load the SKScene from ‘GameScene.sks’
    
    let sceneView = SKView(frame: CGRect(x:0 , y:0, width: 1024, height: 780))
    
    if let scene = GameScene(fileNamed: "GameScene"){
        // Set the scale mode to scale to fit the window
        scene.scaleMode = .aspectFill
        
        // Present the scene
        sceneView.presentScene(scene)
    }
    return sceneView
    
    
}


public func returnSceneTwo () -> SKView {
    // Load the SKScene from ‘GameScene.sks’
    
    let sceneView = SKView(frame: CGRect(x:0 , y:0, width: 1024, height: 780))
    
    if let scene = FaseTwoScene(fileNamed: "FaseTwoScene"){
        // Set the scale mode to scale to fit the window
        scene.scaleMode = .aspectFill
        
        // Present the scene
        sceneView.presentScene(scene)
    }
    return sceneView
    
    
}

public func returnSceneThree () -> SKView {
    // Load the SKScene from ‘GameScene.sks’
    
    let sceneView = SKView(frame: CGRect(x:0 , y:0, width: 1024, height: 780))
    
    if let scene = FaseThreeScene(fileNamed: "FaseThreeScene"){
        // Set the scale mode to scale to fit the window
        scene.scaleMode = .aspectFill
        
        // Present the scene
        sceneView.presentScene(scene)
    }
    return sceneView
    
    
}






