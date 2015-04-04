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

extension SKAction {

    class func moveByX(deltaX: CGFloat, y deltaY: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        let moveByX = animateKeyPath("x", byValue: deltaX, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let moveByY = animateKeyPath("y", byValue: deltaY, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)

        return SKAction.group([moveByX, moveByY])
    }

    class func moveBy(delta: CGVector, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        let moveByX = animateKeyPath("x", byValue: delta.dx, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let moveByY = animateKeyPath("y", byValue: delta.dy, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)

        return SKAction.group([moveByX, moveByY])
    }

    class func moveTo(location: CGPoint, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        let moveToX = animateKeyPath("x", toValue: location.x, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let moveToY = animateKeyPath("y", toValue: location.y, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)

        return SKAction.group([moveToX, moveToY])
    }

    class func moveToX(x: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath("x", toValue: x, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    class func moveToY(y: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath("y", toValue: y, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Rotate

extension SKAction {

    class func rotateByAngle(radians: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath("zRotation", byValue: radians, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    class func rotateToAngle(radians: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath("zRotation", toValue: radians, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Speed

extension SKAction {

    class func speedBy(speed: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath("speed", byValue: speed, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    class func speedTo(speed: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath("speed", toValue: speed, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Scale

extension SKAction {

    class func scaleBy(scale: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return scaleXBy(scale, y: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    class func scaleTo(scale: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return scaleXTo(scale, y: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    class func scaleXBy(xScale: CGFloat, y yScale: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        let scaleXBy = animateKeyPath("xScale", byValue: xScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let scaleYBy = animateKeyPath("yScale", byValue: yScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)

        return SKAction.group([scaleXBy, scaleYBy])
    }

    class func scaleXTo(scale: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath("xScale", toValue: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    class func scaleYTo(scale: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath("yScale", toValue: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    class func scaleXTo(xScale: CGFloat, y yScale: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        let scaleXTo = self.scaleXTo(xScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let scaleYTo = self.scaleYTo(yScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)

        return SKAction.group([scaleXTo, scaleYTo])
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Fade

extension SKAction {

    class func fadeInWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath("alpha", toValue: 1, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    class func fadeOutWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath("alpha", toValue: 0, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    class func fadeAlphaBy(factor: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath("alpha", byValue: factor, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    class func fadeAlphaTo(factor: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath("alpha", toValue: factor, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Resize

extension SKAction {

    class func resizeByWidth(width: CGFloat, height: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        let resizeByWidth = animateKeyPath("width", byValue: width, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let resizeByHeight = animateKeyPath("height", byValue: height, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)

        return SKAction.group([resizeByWidth, resizeByHeight])
    }

    class func resizeToWidth(width: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath("width", toValue: width, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    class func resizeToHeight(height: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath("height", toValue: height, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    class func resizeToWidth(width: CGFloat, height: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        let resizeToWidth = self.resizeToWidth(width, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let resizeToHeight = self.resizeToHeight(height, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)

        return SKAction.group([resizeToWidth, resizeToHeight])
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Colorize

extension SKAction {

    class func colorizeWithColorBlendFactor(colorBlendFactor: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath("colorBlendFactor", toValue: colorBlendFactor, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: - Damping Logic

extension SKAction {

    class func animateKeyPath(keyPath: String, byValue initialDistance: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath(keyPath, byValue: initialDistance, toValue: nil, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    class func animateKeyPath(keyPath: String, toValue finalValue: CGFloat, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        return animateKeyPath(keyPath, byValue: nil, toValue: finalValue, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }

    private class func animateKeyPath(keyPath: String, var byValue initialDistance: CGFloat!, var toValue finalValue: CGFloat!, duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {

        var initialValue: CGFloat!
        var naturalFrequency, dampedFrequency, t1, t2: CGFloat!
        var A, B: CGFloat!

        let animation = SKAction.customActionWithDuration(duration) {
            node, elapsedTime in

            if initialValue == nil {

                initialValue = node.valueForKeyPath(keyPath) as CGFloat
                initialDistance = initialDistance ?? finalValue - initialValue
                finalValue = finalValue ?? initialValue + initialDistance

                var magicNumber: CGFloat! // picked manually to visually match the behavior of UIKit
                if dampingRatio < 1 { magicNumber = 8 / dampingRatio }
                else if dampingRatio == 1 { magicNumber = 10 }
                else { magicNumber = 12 * dampingRatio }

                naturalFrequency = magicNumber / CGFloat(duration)
                dampedFrequency = naturalFrequency * sqrt(1 - pow(dampingRatio, 2))
                t1 = 1 / (naturalFrequency * (dampingRatio - sqrt(pow(dampingRatio, 2) - 1)))
                t2 = 1 / (naturalFrequency * (dampingRatio + sqrt(pow(dampingRatio, 2) - 1)))
            }

            var currentValue: CGFloat!

            if elapsedTime < CGFloat(duration) {

                if dampingRatio < 1 {

                    A = A ?? initialDistance
                    B = B ?? (dampingRatio * naturalFrequency - velocity) * initialDistance / dampedFrequency

                    currentValue = finalValue - exp(-dampingRatio * naturalFrequency * elapsedTime) * (A * cos(dampedFrequency * elapsedTime) + B * sin(dampedFrequency * elapsedTime))
                }
                else if dampingRatio == 1 {

                    A = A ?? initialDistance
                    B = B ?? (naturalFrequency - velocity) * initialDistance

                    currentValue = finalValue - exp(-dampingRatio * naturalFrequency * elapsedTime) * (A + B * elapsedTime)
                }
                else {

                    A = A ?? (t1 * t2 / (t1 - t2)) * initialDistance * (1/t2 - velocity)
                    B = B ?? (t1 * t2 / (t2 - t1)) * initialDistance * (1/t1 - velocity)

                    currentValue = finalValue - A * exp(-elapsedTime/t1) - B * exp(-elapsedTime/t2)
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


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: - KVC Extensions -


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: SKNode

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
// MARK: SKSpriteNode

extension SKSpriteNode {

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
