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
// MARK: - Factory Methods -


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Move

public extension SKAction {

    public class func move(by delta: CGVector, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        let moveByX = animate(keyPath: "x", byValue: delta.dx, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let moveByY = animate(keyPath: "y", byValue: delta.dy, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)

        return SKAction.group([moveByX, moveByY])
    }

    public class func move(to location: CGPoint, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        let moveToX = animate(keyPath: "x", toValue: location.x, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let moveToY = animate(keyPath: "y", toValue: location.y, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)

        return SKAction.group([moveToX, moveToY])
    }
    
    public class func moveBy(x deltaX: CGFloat, y deltaY: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        let moveByX = animate(keyPath: "x", byValue: deltaX, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let moveByY = animate(keyPath: "y", byValue: deltaY, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        
        return SKAction.group([moveByX, moveByY])
    }

    public class func moveTo(x: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: "x", toValue: x, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    public class func moveTo(y: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: "y", toValue: y, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Rotate

public extension SKAction {

    public class func rotate(byAngle radians: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: "zRotation", byValue: radians, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    public class func rotate(toAngle radians: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: "zRotation", toValue: radians, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Speed

public extension SKAction {

    public class func speed(by speed: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: "speed", byValue: speed, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    public class func speed(to speed: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: "speed", toValue: speed, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Scale

public extension SKAction {

    public class func scale(by scale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return scaleX(by: scale, y: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    public class func scale(to scale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return scaleX(to: scale, y: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    public class func scaleX(by xScale: CGFloat, y yScale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        let scaleXBy = animate(keyPath: "xScale", byValue: xScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let scaleYBy = animate(keyPath: "yScale", byValue: yScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)

        return SKAction.group([scaleXBy, scaleYBy])
    }

    public class func scaleX(to scale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: "xScale", toValue: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    public class func scaleY(to scale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: "yScale", toValue: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    public class func scaleX(to xScale: CGFloat, y yScale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        let scaleXTo = self.scaleX(to: xScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let scaleYTo = self.scaleY(to: yScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)

        return SKAction.group([scaleXTo, scaleYTo])
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Fade

public extension SKAction {

    public class func fadeIn(withDuration duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: "alpha", toValue: 1, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    public class func fadeOut(withDuration duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: "alpha", toValue: 0, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    public class func fadeAlpha(by factor: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: "alpha", byValue: factor, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    public class func fadeAlpha(to factor: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: "alpha", toValue: factor, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Resize

public extension SKAction {

    public class func resize(toWidth width: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: "width", toValue: width, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    public class func resize(toHeight height: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: "height", toValue: height, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    public class func resize(byWidth width: CGFloat, height: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        let resizeByWidth = animate(keyPath: "width", byValue: width, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let resizeByHeight = animate(keyPath: "height", byValue: height, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        
        return SKAction.group([resizeByWidth, resizeByHeight])
    }

    public class func resize(toWidth width: CGFloat, height: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        let resizeToWidth = self.resize(toWidth: width, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let resizeToHeight = self.resize(toHeight: height, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)

        return SKAction.group([resizeToWidth, resizeToHeight])
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Colorize

public extension SKAction {

    public class func colorize(withColorBlendFactor colorBlendFactor: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: "colorBlendFactor", toValue: colorBlendFactor, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: - Damping Logic

public extension SKAction {

    public class func animate(keyPath: String, byValue initialDistance: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: keyPath, byValue: initialDistance, toValue: nil, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    public class func animate(keyPath: String, toValue finalValue: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animate(keyPath: keyPath, byValue: nil, toValue: finalValue, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    private class func animate(keyPath: String, byValue: CGFloat!, toValue: CGFloat!, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        var initialValue: CGFloat!
        var naturalFrequency: CGFloat = 0
        var dampedFrequency: CGFloat = 0
        var t1: CGFloat = 0
        var t2: CGFloat = 0
        var A: CGFloat = 0
        var B: CGFloat = 0
        var finalValue: CGFloat! = toValue
        var initialDistance: CGFloat! = byValue
        
        let animation = SKAction.customAction(withDuration: duration) {
            node, elapsedTime in

            if initialValue == nil {

                initialValue = node.value(forKeyPath: keyPath) as! CGFloat
                initialDistance = initialDistance != nil ? initialDistance * initialValue - initialValue : finalValue - initialValue!
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
                }  else if dampingRatio == 1 {
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
                }
                else if dampingRatio == 1 {
                    
                    let dampingExp: CGFloat = exp(-dampingRatio * naturalFrequency * elapsedTime)

                    currentValue = finalValue - dampingExp * (A + B * elapsedTime)
                }
                else {

                    let ADamp:CGFloat =  A * exp(-elapsedTime/t1)
                    let BDamp:CGFloat = B * exp(-elapsedTime/t2)
                    currentValue = finalValue - ADamp - BDamp
                }
            }
            else {

                currentValue = finalValue
            }

            node.setValue(currentValue, forKeyPath: keyPath)
        }

        if delay > 0 {

            return SKAction.sequence([SKAction.wait(forDuration: delay), animation])
        }
        else {

            return animation
        }
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: - KVC Extensions -


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: SKNode

public extension SKNode {

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
// MARK: SKSpriteNode

public extension SKSpriteNode {

    var width: CGFloat {
        get {

            return size.width
        }
        set {

            size.width = newValue
        }
    }

    var height: CGFloat {
        get {

            return size.height
        }
        set {

            size.height = newValue
        }
    }
}
