//
//  Elements.swift
//  Book_Sources
//
//  Created by Eliza Maria Porto de Carvalho on 22/03/19.
//

import Foundation
import SpriteKit
import UIKit

public enum elemento{
    
    case water
    
    case lightEnergy
    
    case carbondioxide
    
    case treeFood
}

public enum passCarbon{
    
    case atmosphere
    case plants
    case carbonDioxideTravel
    case toHuman
    
}

public enum feedBeings{
    case human
    case cow
    case species
}


//MARK: First Fase Elements

public enum FirstFotossinteseElement{
    case water
    case treeFood
}
public enum SecondFotossinteseElement{
    case lightEnergy
    case treeFood
}
public enum ThirdFotossinteseElement{
    case carbonDioxide
    case treeFood
}

public enum FirstStepOfCarbonTo{
    case goToAtsmosphere
    case goSomewhere
}

public enum SecondStepOfCarbonTo{
    case goToPlants
    case goSomewhere
}



//MARK: Second Fase Elements

public enum FeedHumanWith{
    case meat
    case someFood
}

public enum FeedCowWith{
    case plants
    case someFood
}

public enum ThirdStepOfCarbon{
    case goToHumans
    case goSomewhere
}


//MARK: Third Fase Elements

public enum FourthStepOfCarbon{
    case goToTheSoil
    case goSomewhere
}
public enum FifhtStepOfCarbon{
    case goToTheRoot
    case goSomewhere
}


