//
//  Team Members:
//  Akshit Upneja (300976590)
//  santhosh damodharan (300964037)
//  Amanpreet Kaur (300966930)
//
//  Created by Akshit Upneja on 2017-12-31.
//  Copyright © 2017 Centennial College. All rights reserved.
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
