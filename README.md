# MoveSubviewAnimated

[![Version](https://img.shields.io/cocoapods/v/MoveSubviewAnimated.svg?style=flat)](https://cocoapods.org/pods/MoveSubviewAnimated)
[![License](https://img.shields.io/cocoapods/l/MoveSubviewAnimated.svg?style=flat)](https://cocoapods.org/pods/MoveSubviewAnimated)
[![Platform](https://img.shields.io/cocoapods/p/MoveSubviewAnimated.svg?style=flat)](https://cocoapods.org/pods/MoveSubviewAnimated)

## Example
![Animation example recording](https://s6.gifyu.com/images/ezgif-6-ca2772722a9b.gif)

## Usage
Import the module
```swift
import MoveSubviewAnimated
```

Run the animation:
```swift
// animteMove(subview: UIView, changes: (UIView) -> Void) returns a closure you can run inside an animation block. 
let toAnimate = self.view.animateMove(subview: image) { subview in
    targetView.addSubview(subview)
}

// Perform whichever animations you like with `toAnimate`
UIView.animate(withDuration: 1, delay: 0, options: [.allowUserInteraction], animations: toAnimate, completion: nil)
```
You can also modify the `UIView.animate` parameters as you wish to achieve different kinds of animations.

## Installation

MoveSubviewAnimated is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MoveSubviewAnimated', :git => "https://github.com/gkpln3/MoveSubviewAnimated.git"
```

## Author

Guy Kaplan, gkpln3@gmail.com

## License

MoveSubviewAnimated is available under the MIT license. See the LICENSE file for more info.
