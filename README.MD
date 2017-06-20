

<h1 align="center">
​    CoreML-Flowers
</h1>

![Platform](https://img.shields.io/badge/platform-ios-lightgrey.svg)![Language](https://img.shields.io/badge/language-swift-orange.svg)![License](https://img.shields.io/badge/license-MIT-blue.svg)

## About

Sample app that predicts the flower type on an image, using Core ML and the [Oxford 102 category flower dataset](http://www.robots.ox.ac.uk/~vgg/data/flowers/102/index.html).

## Requirements

- iOS 11.0+
- Xcode 9.0+
- Swift 3.0+

## Usage

You'll need to produce the *.mlmodel* in order to use the app.

Download the **.caffemodel** (~230Mb) [here](https://s3.amazonaws.com/jgoode/oxford102.caffemodel), move it into the *conversion* folder, and run the script as follows:

```bash
$ python FlowerModeltoCoreML.py
```

Drag the *FlowerClassifier.mlmodel* into the Xcode project and you can run it!

##### For additionnal info, please read the article: 

## License

Available under the MIT license. See the LICENSE file for more info.