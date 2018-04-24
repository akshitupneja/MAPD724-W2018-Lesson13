//
//  AnimationManager.swift
//  MAPD724-W2018-Lesson13
//
//  Created by Tom Tsiliopoulos on 2018-04-23.
//  Copyright © 2018 CentennialCollege. All rights reserved.
//

import CoreGraphics
import UIKit

class AnimationManager {
    class var screenBounds: CGRect {
        return UIScreen.main.bounds
    }
    
    //Top
    class var Top:CGPoint {
        // TODO: return top value
        return CGPoint(x: screenBounds.midX, y: screenBounds.minY)
    }
    
    //Right
    class var Right:CGPoint {
        // TODO: return Right value
        return CGPoint(x: 10.0, y: 10.0)
    }
    
    //Bottom
    class var Bottom:CGPoint {
        // TODO: return Bottom value
        return CGPoint(x: 10.0, y: 10.0)
    }
    
    //Left
    class var Left:CGPoint {
        // TODO: return Left value
        return CGPoint(x: 10.0, y: 10.0)
    }
}
