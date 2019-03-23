
/*:
 
 **Challenge:** Configure your game bellow. If you have any difficulties, check the *Hint* button for more information. Tap on the screen to jump - you can jump as many times as you want. Try out different combinations, press the Run My Code button and have fun!
 
 - **Note:** Remember, healthy foods make your weight go down by **10** and unhealthy foods increase it by **10**. Healthy habits make your cholesterol go down by **10** and unhealthy habits increase it by **10**.
 
 */
//#-hidden-code
import UIKit
import PlaygroundSupport
import SpriteKit

// Inner View declaration as GameViewController
let innerView = GameViewControllerRunner(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))

// Setup of current page live view
let page = PlaygroundPage.current
page.liveView = innerView
page.needsIndefiniteExecution = true

// Functions to be called when the user edit the text and run code
var heroType: PlayerType!
var jumpStrength = Int()
var speedOfScene: CGFloat!
var obstacleTime: CGFloat!
var epoch: Int! = 0
var playerWeight: Int!
var playerCholesterol:Int!
var playerMaxWeight: Int!
var playerMaxCholesterol: Int!

private func setupGame(player: PlayerType, jumpForce: Int, scenario: Scenario) {
    heroType = player
    if (scenario == .Sea) {
        epoch = 0
    }
    else if (scenario == .Countryside) {
        epoch = 1
    }
    else {
        epoch = 2
    }
    var jumpF: Int = jumpForce
    if (jumpForce <= 20 && jumpForce > 0) {
        jumpF = jumpForce
    }
        
    else if (jumpForce <= 0) {
        jumpF = 1
    }
        
    else {
        jumpF = 20
    }
    
    jumpStrength = jumpF
}

private func setupHealthData(weight: Int, maxWeight: Int,  cholesterol:Int, maxCholesterol: Int) {
    
    if (maxWeight <= 0) {
        playerMaxWeight = 0
    }
        
    else if (maxWeight >= 999) {
        playerMaxWeight = 999
    }
        
    else {
        playerMaxWeight = maxWeight
    }
    
    if (weight <= playerMaxWeight && weight >= 0) {
        playerWeight = weight
    }
        
    else if (weight < 0) {
        playerWeight = 0
    }
        
        
    else {
        playerWeight = playerMaxWeight
    }
    
    if (maxCholesterol <= 0) {
        playerMaxCholesterol = 0
    }
        
    else if (maxCholesterol >= 999) {
        playerMaxCholesterol = 999
    }
        
    else {
        playerMaxCholesterol = maxCholesterol
    }
    if (cholesterol <= playerMaxCholesterol && cholesterol >= 0) {
        playerCholesterol = cholesterol
    }
        
    else if (cholesterol < 0) {
        playerCholesterol = 0
    }
        
    else {
        playerCholesterol = playerMaxCholesterol
    }
}

private func setupEnemies(sceneSpeed: CGFloat, itemSpawnTime: CGFloat) {
    
    var speed: CGFloat = sceneSpeed
    var time: CGFloat = itemSpawnTime
    if (sceneSpeed > 20) {
        speed = 20
        
    }
        
    else if (sceneSpeed <= 0.5) {
        speed = 0.5
    }
    
    speedOfScene = speed
    if (itemSpawnTime <= 0.5) {
        time = 0.5
    }
    obstacleTime = time
}

private func setupAudio(backgroundMusic: BackgroundMusic, jumpSound: JumpSound) {
    let newScene = GameSceneRunner(heroType: heroType, epoch: epoch, size: innerView.frame.size, movingSpeed: speedOfScene, timeBetweenObstacles: obstacleTime, backgroundMusic: backgroundMusic, jumpSound: jumpSound, jumpForce: jumpStrength, playerWeight: playerWeight, playerCholesterol: playerCholesterol, maxWeight: playerMaxWeight, maxCholesterol: playerMaxCholesterol)
    
    innerView.setupScene(scene: newScene)
}

//#-end-hidden-code
//#-code-completion(everything, show, .Boy, .Girl, CarminaBurana.mp3, BoobleBits.mp3, AdventureTune.mp3, SpaceGroove.mp3, HappyFunk.mp3, .PingJump, .SpinJump)
//Configure your player, the jump force and the scenario
setupGame(player:/*#-editable-code */.Boy/*#-end-editable-code*/, jumpForce: /*#-editable-code */10/*#-end-editable-code*/, scenario: /*#-editable-code */.Sea/*#-end-editable-code*/)

// Configure the initial health data for your player
setupHealthData(weight:/*#-editable-code */100/*#-end-editable-code*/, maxWeight:/*#-editable-code */170/*#-end-editable-code*/, cholesterol:/*#-editable-code */100/*#-end-editable-code*/, maxCholesterol: /*#-editable-code */170/*#-end-editable-code*/ )

//Configure the movement of the scene and the enemies spawn time
setupEnemies(sceneSpeed:/*#-editable-code */3.0/*#-end-editable-code*/, itemSpawnTime: /*#-editable-code */1.5/*#-end-editable-code*/)

//Configure the background music and jump sound
setupAudio(backgroundMusic: /*#-editable-code */.BobbleBits/*#-end-editable-code*/, jumpSound: /*#-editable-code */.PingJump/*#-end-editable-code*/)













