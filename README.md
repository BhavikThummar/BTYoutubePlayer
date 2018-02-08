# BTYoutubePlayer

A Youtube Video Player for iOS built with Swift.

![screenshot_1_opt](https://user-images.githubusercontent.com/16632644/35981266-daa30ae6-0d12-11e8-8594-11c4064ee639.png)
![screenshot_2_opt](https://user-images.githubusercontent.com/16632644/35981299-ed4f29cc-0d12-11e8-8804-344c501ed92b.png)


## 👨🏻‍💻 Installation

BTYoutubePlayer is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'BTYoutubePlayer'
```

## Usage

First of all import BTYoutubePlayer

```ruby
import 'BTYoutubePlayer'
```

Load video with Youtube Url

```ruby
BTYoutubePlayer.loadWith(youtubeUrl: "https://www.youtube.com/watch?v=euCqAq6BRa4", target: self)
```
or

Load video with Youtube ID

```ruby
BTYoutubePlayer.loadWith(id: "AJtDXIazrMo", target: self)
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Author

BhavikThummar, bhavikthummar9797@yahoo.com
[Website](http://bhavikthummar.com)

## Contribution

Feel free to fork the project and send us a pull-request! 😎

## License

BTYoutubePlayer is available under the MIT license. See the LICENSE file for more info.
