# BTYoutubePlayer

A Youtube Video Player for iOS built with Swift.

![screenshot_1_opt](https://user-images.githubusercontent.com/16632644/35981266-daa30ae6-0d12-11e8-8594-11c4064ee639.png)
![screenshot_2_opt](https://user-images.githubusercontent.com/16632644/35981299-ed4f29cc-0d12-11e8-8804-344c501ed92b.png)

## 📦 Requirements
- iOS 8+
- Xcode 9.0+
- Swift 4.0


## 👨🏻‍💻 Installation

BTYoutubePlayer is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```swift
pod 'BTYoutubePlayer'
```

## 💻 Usage
It only takes a few simple steps to and setup BTYoutubePlayer to your project.  First of all import BTYoutubePlayer

```swift
import BTYoutubePlayer
```

Load video with Youtube Url

```swift
BTYoutubePlayer.loadWith(youtubeUrl: "https://www.youtube.com/watch?v=euCqAq6BRa4", target: self)
```
or

Load video with Youtube ID

```swift
BTYoutubePlayer.loadWith(id: "AJtDXIazrMo", target: self)
```

## 💁🏻‍♂️ Example

The iOS Sample App included with this project demonstrates one way to correctly setup and use BTYoutubePlayer


## 🙋🏻‍♂️ Author

[Bhavik Thummar](http://bhavikthummar.com),  Email : bhavikthummar9797@yahoo.com


## 📬 Support

Open an issue or shoot me an email. Check out previous issues to see if your's has already been solved. (I would prefer an issue over an email. But will still happily respond to an email.)

## 💰 Contribution

Feel free to fork the project and send me a pull-request! 😎

## 📜 License
You are free to make changes and use this in either personal or commercial projects. Attribution is not required, but highly appreciated. A little "Thanks!" (or something to that affect) is always welcome. If you use BTYoutubePlayer in your app, please let us know!. BTYoutubePlayer is available under the MIT license. See the LICENSE file for more info.
