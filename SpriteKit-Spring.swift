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
// MARK: Move

@objc public extension SKAction {
    
    @objc class func move(by delta: CGVector, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        let moveByX = animate(keyPath: \SKNode.position.x, byValue: delta.dx, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let moveByY = animate(keyPath: \SKNode.position.y, byValue: delta.dy, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        
        return SKAction.group([moveByX, moveByY])
    }
    
    @objc class func move(to location: CGPoint, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        let moveToX = animate(keyPath: \SKNode.position.x, toValue: location.x, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let moveToY = animate(keyPath: \SKNode.position.y, toValue: location.y, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        
        return SKAction.group([moveToX, moveToY])
    }
    
    @objc class func moveBy(x deltaX: CGFloat, y deltaY: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        let moveByX = animate(keyPath: \SKNode.position.x, byValue: deltaX, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let moveByY = animate(keyPath: \SKNode.position.y, byValue: deltaY, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        
        return SKAction.group([moveByX, moveByY])
    }
    
    @objc class func moveTo(x: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(keyPath: \SKNode.position.x, toValue: x, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    @objc class func moveTo(y: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(keyPath: \SKNode.position.y, toValue: y, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Rotate

@objc public extension SKAction {
    
    @objc class func rotate(byAngle radians: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(keyPath: \SKNode.zRotation, byValue: radians, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    @objc class func rotate(toAngle radians: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(keyPath: \SKNode.zRotation, toValue: radians, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Speed

@objc public extension SKAction {
    
    @objc class func speed(by speed: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(keyPath: \SKNode.speed, byValue: speed, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    @objc class func speed(to speed: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(keyPath: \SKNode.speed, toValue: speed, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Scale

public extension SKAction {
    
    @objc class func scale(by scale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return scaleX(by: scale, y: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    @objc class func scale(to scale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return scaleX(to: scale, y: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    @objc class func scaleX(by xScale: CGFloat, y yScale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        let scaleXBy = animate(keyPath: \SKNode.xScale, byValue: xScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let scaleYBy = animate(keyPath: \SKNode.yScale, byValue: yScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        
        return SKAction.group([scaleXBy, scaleYBy])
    }
    
    @objc class func scaleX(to scale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(keyPath: \SKNode.xScale, toValue: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    @objc class func scaleY(to scale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(keyPath: \SKNode.yScale, toValue: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    @objc class func scaleX(to xScale: CGFloat, y yScale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        let scaleXTo = self.scaleX(to: xScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let scaleYTo = self.scaleY(to: yScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        
        return SKAction.group([scaleXTo, scaleYTo])
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Fade

public extension SKAction {
    
    @objc class func fadeIn(withDuration duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(keyPath: \SKNode.alpha, toValue: 1, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    @objc class func fadeOut(withDuration duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(keyPath: \SKNode.alpha, toValue: 0, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    @objc class func fadeAlpha(by factor: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(keyPath: \SKNode.alpha, byValue: factor, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    @objc class func fadeAlpha(to factor: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(keyPath: \SKNode.alpha, toValue: factor, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Resize

@objc public extension SKAction {
    
    @objc class func resize(toWidth width: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(keyPath: \SKSpriteNode.size.width, toValue: width, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    @objc class func resize(toHeight height: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(keyPath: \SKSpriteNode.size.height, toValue: height, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    @objc class func resize(byWidth width: CGFloat, height: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        let resizeByWidth = animate(keyPath: \SKSpriteNode.size.width, byValue: width, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let resizeByHeight = animate(keyPath: \SKSpriteNode.size.height, byValue: height, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        
        return SKAction.group([resizeByWidth, resizeByHeight])
    }
    
    @objc class func resize(toWidth width: CGFloat, height: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        let resizeToWidth = self.resize(toWidth: width, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let resizeToHeight = self.resize(toHeight: height, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        
        return SKAction.group([resizeToWidth, resizeToHeight])
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Colorize

@objc public extension SKAction {
    
    @objc class func colorize(withColorBlendFactor colorBlendFactor: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(keyPath: \SKSpriteNode.colorBlendFactor, toValue: colorBlendFactor, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: - Damping Logic

public extension SKAction {
    
    class func animate<T>(keyPath: ReferenceWritableKeyPath<T, CGFloat>, byValue initialDistance: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(_keyPath: keyPath, byValue: initialDistance, toValue: nil, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    class func animate<T>(keyPath: ReferenceWritableKeyPath<T, CGFloat>, toValue finalValue: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        return animate(_keyPath: keyPath, byValue: nil, toValue: finalValue, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    private class func animate<T>(_keyPath: ReferenceWritableKeyPath<T, CGFloat>, byValue: CGFloat!, toValue: CGFloat!, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        var initialValue: CGFloat!
        var naturalFrequency: CGFloat = 0
        var dampedFrequency: CGFloat = 0
        var t1: CGFloat = 0
        var t2: CGFloat = 0
        var A: CGFloat = 0
        var B: CGFloat = 0
        var finalValue: CGFloat! = toValue
        var initialDistance: CGFloat! = byValue
        
        let animation = SKAction.customAction(withDuration: duration, actionBlock: {
            (node, elapsedTime) in
            
            if let propertyToAnimation = node as? T {
                
                if initialValue == nil {
                    
                    initialValue = propertyToAnimation[keyPath: _keyPath]
                    initialDistance = initialDistance ?? finalValue - initialValue!
                    finalValue = finalValue ?? initialValue! + initialDistance
                    
                    var magicNumber: CGFloat! // picked manually to visually match the behavior of UIKit
                    if dampingRatio < 1 { magicNumber = 8 / dampingRatio }
                    else if dampingRatio == 1 { magicNumber = 10 }
                    else { magicNumber = 12 * dampingRatio }
                    
                    naturalFrequency = magicNumber / CGFloat(duration)
                    dampedFrequency = naturalFrequency * sqrt(1 - pow(dampingRatio, 2))
                    t1 = 1 / (naturalFrequency * (dampingRatio - sqrt(pow(dampingRatio, 2) - 1)))
                    t2 = 1 / (naturalFrequency * (dampingRatio + sqrt(pow(dampingRatio, 2) - 1)))
                    
                    if dampingRatio < 1 {
                        A = initialDistance
                        B = (dampingRatio * naturalFrequency - velocity) * initialDistance / dampedFrequency
                    } else if dampingRatio == 1 {
                        A = initialDistance
                        B = (naturalFrequency - velocity) * initialDistance
                    } else {
                        A = (t1 * t2 / (t1 - t2))
                        A *= initialDistance * (1/t2 - velocity)
                        B = (t1 * t2 / (t2 - t1))
                        B *= initialDistance * (1/t1 - velocity)
                    }
                }
                
                var currentValue: CGFloat!
                
                if elapsedTime < CGFloat(duration) {
                    
                    if dampingRatio < 1 {
                        
                        let dampingExp:CGFloat = exp(-dampingRatio * naturalFrequency * elapsedTime)
                        let ADamp:CGFloat = A * cos(dampedFrequency * elapsedTime)
                        let BDamp:CGFloat = B * sin(dampedFrequency * elapsedTime)
                        
                        currentValue = finalValue - dampingExp * (ADamp + BDamp)
                    } else if dampingRatio == 1 {
                        
                        let dampingExp: CGFloat = exp(-dampingRatio * naturalFrequency * elapsedTime)
                        
                        currentValue = finalValue - dampingExp * (A + B * elapsedTime)
                    } else {
                        
                        let ADamp:CGFloat =  A * exp(-elapsedTime/t1)
                        let BDamp:CGFloat = B * exp(-elapsedTime/t2)
                        currentValue = finalValue - ADamp - BDamp
                    }
                } else {
                    currentValue = finalValue
                }
                propertyToAnimation[keyPath: _keyPath] = currentValue
            }
        })
        
        if delay > 0 {
            return SKAction.sequence([SKAction.wait(forDuration: delay), animation])
        } else {
            return animation
        }
    }
}
