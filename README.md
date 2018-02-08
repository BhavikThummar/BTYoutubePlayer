# BTYoutubePlayer

[![CI Status](http://img.shields.io/travis/BhavikThummar/BTYoutubePlayer.svg?style=flat)](https://travis-ci.org/BhavikThummar/BTYoutubePlayer)
[![Version](https://img.shields.io/cocoapods/v/BTYoutubePlayer.svg?style=flat)](http://cocoapods.org/pods/BTYoutubePlayer)
[![License](https://img.shields.io/cocoapods/l/BTYoutubePlayer.svg?style=flat)](http://cocoapods.org/pods/BTYoutubePlayer)
[![Platform](https://img.shields.io/cocoapods/p/BTYoutubePlayer.svg?style=flat)](http://cocoapods.org/pods/BTYoutubePlayer)



## Installation

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
