SpriteKit-Spring
================

SpriteKit-Spring is a set of extensions to perform spring animations with SpriteKit.

## Usage

In iOS 7, Apple introduced spring animations in UIKit by adding a new animation method on UIView (see [WWDC video](https://developer.apple.com/videos/wwdc/2014/#221) and [UIView documentation](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIView_Class/index.html#//apple_ref/occ/clm/UIView/animateWithDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:)).

This library replicates this feature by adding a spring variant to most factory methods of SKAction. The parameters ```usingSpringWithDamping:``` and ```initialSpringVelocity:``` have the same meaning as their UIKit counterpart. See below for examples.

## Examples

### Move

```swift
let move = SKAction.moveByX(0, y: 200, 
  duration: 5, delay: 5,
  usingSpringWithDamping: 0.2, initialSpringVelocity: 0)
  
node.runAction(move)
```

![Move](https://ataugeron.github.io/SpriteKit-Spring/bounce_1.gif)

### Scale

```swift
let scale = SKAction.scaleXTo(2, y: 0.5,
  duration: 5, delay: 5,
  usingSpringWithDamping: 0.2, initialSpringVelocity: 0)
  
node.runAction(scale)
```

![Scale](https://ataugeron.github.io/SpriteKit-Spring/bounce_2.gif)

### Rotate

```swift
let rotate = SKAction.rotateByAngle(CGFloat(M_PI/2),
  duration: 5, delay: 5,
  usingSpringWithDamping: 0.2, initialSpringVelocity: 0)
  
node.runAction(rotate)
```

![Rotate](https://ataugeron.github.io/SpriteKit-Spring/bounce_3.gif)

## Notes

- Because they use ```customActionWithDuration:actionBlock:```, none of these actions is reversible (the reverse action performs the same animation).
- All these factory methods are based on the lower level ```animateKeyPath:byValue:duration:delay:usingSpringWithDamping:initialSpringVelocity:``` and ```animateKeyPath:toValue:duration:delay:usingSpringWithDamping:initialSpringVelocity:``` methods, which can animate any CGFloat key path. If you have a SKNode subclass with a fancy CGFloat property that you'd like to animate, feel free to use these methods!

## Creator

- [Alexis Taugeron](http://alexistaugeron.com) ([@ataugeron](https://twitter.com/ataugeron))

## License

SpriteKit-Spring is released under the Apache 2 license. See LICENSE for details.
