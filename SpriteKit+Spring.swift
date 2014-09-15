////////////////////////////////////////////////////////////////////////////////////////////////////
//  Copyright 2014 Alexis Taugeron
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
////////////////////////////////////////////////////////////////////////////////////////////////////

import SpriteKit


////////////////////////////////////////////////////////////////////////////////////////////////////

extension SKNode {
    
    var x: CGFloat {
        get {
            
            return position.x
        }
        set {
            
            position.x = newValue
        }
    }
    
    var y: CGFloat {
        get {
            
            return position.y
        }
        set {
            
            position.y = newValue
        }
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////

extension SKAction {
    
    class func animateKeyPath(keyPath: String, toValue finalValue: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        var initialValue, initialDistance: CGFloat!
        var naturalFrequency, dampedFrequency: CGFloat!
        var A, B: CGFloat!
        
        let animation = SKAction.customActionWithDuration(duration) {
            node, elapsedTime in
            
            if initialValue == nil {
                
                initialValue = node.valueForKeyPath(keyPath) as CGFloat
                initialDistance = finalValue - initialValue
                naturalFrequency = 8 / (CGFloat(duration) * dampingRatio) // 8 was picked to visually match the behavior of UIKit
                dampedFrequency = naturalFrequency * sqrt(1 - pow(dampingRatio, 2))
            }
            
            var currentValue: CGFloat!
            
            if elapsedTime < CGFloat(duration) {
                
                if dampingRatio < 1 {
                    
                    A = A ?? initialDistance
                    B = B ?? (dampingRatio * naturalFrequency * initialDistance + velocity) / dampedFrequency
                    //TODO: Velocity doesn't match the behavior of UIKit
                    
                    currentValue = finalValue - exp(-dampingRatio * naturalFrequency * elapsedTime) * (A * cos(dampedFrequency * elapsedTime) + B * sin(dampedFrequency * elapsedTime))
                }
                else if dampingRatio == 1 {
                    
                    A = A ?? initialDistance
                    B = B ?? velocity + naturalFrequency * initialDistance
                    //TODO: Velocity doesn't match the behavior of UIKit
                    
                    currentValue = finalValue - exp(-dampingRatio * naturalFrequency * elapsedTime) * (A + B * elapsedTime)
                }
                else {
                    
                    //TODO: Over-damping
                }
            }
            else {
                
                currentValue = finalValue
            }
            
            node.setValue(currentValue, forKeyPath: keyPath)
        }
        
        if delay > 0 {
            
            return SKAction.sequence([SKAction.waitForDuration(delay), animation])
        }
        else {
            
            return animation
        }
    }
}
