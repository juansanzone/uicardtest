![Screenshot iOS](https://i.ibb.co/hCsHg7B/libcover.jpg)
<p align="center">
    <a href="https://app.bitrise.io/">
      <img src="https://app.bitrise.io/app/d2d19a45654ed1d8/status.svg?token=9BWGNvo1MwPKFb2wQB2dCg">
    </a>
    <img src="https://img.shields.io/badge/Swift-4.2-orange.svg" />
    <a href="https://cocoapods.org/pods/MeliCardDrawer">
        <img src="https://img.shields.io/cocoapods/v/MeliCardDrawer.svg" alt="CocoaPods" />
    </a>
    <a href="https://cocoapods.org/pods/MeliCardDrawer">
        <img src="https://img.shields.io/cocoapods/dt/MeliCardDrawer.svg?style=flat" alt="CocoaPods downloads" />
    </a>
</p>

## 📲 How to Install

#### Using [CocoaPods](https://cocoapods.org)

Edit your `Podfile` and specify the dependency:

```ruby
pod 'MeliCardDrawer'
```

## 🌟 Features
- [x] Easy to install
- [x] Easy to integrate
- [x] PCI compliance
- [x] Font customization

## 🐒 How to use

### 1 - Import into project
```swift
import MeliCardDrawer
```

### 2 - Set your  `PublicKey`  and  `PreferenceId` 
```swift
let checkout = MercadoPagoCheckout.init(builder: MercadoPagoCheckoutBuilder.init(publicKey: "your_public_key", preferenceId: "your_checkout_preference_id"))
```

### 3 - Start
```swift
checkout.start(navigationController: self.navigationController)
```

## 💪 One line integration
```swift
MercadoPagoCheckout.init(builder: MercadoPagoCheckoutBuilder.init(publicKey: "your_public_key", preferenceId: "your_checkout_preference_id")).start(navigationController: self.navigationController)
```

## 💡Advanced integration
Check our official code <a href="http://mercadopago.github.io/px-ios/v4/" target="_blank"> reference </a>, especially <a href="http://mercadopago.github.io/px-ios/v4/Classes/MercadoPagoCheckoutBuilder.html" target="_blank"> MercadoPagoCheckoutBuilder </a> object to explore all available functionalities.


## 🎨 UI Custom Colors
### Basic color customization
You can define one color (your main color) and we will take care of the rest. Delivering the best Checkout experience based on your color.
```swift
checkoutBuilder.setColor(checkoutColor: UIColor.purple)
```

### Advanced color customization
If you need an advanced color customization, you can customize your colors through our `PXTheme` interface/protocol. Check the  <a href="http://mercadopago.github.io/px-ios/v4/Protocols/PXTheme.html" target="_blank"> `PXTheme` methods in our reference guide. </a>

The following example implements the protocol `PXTheme` to customize the UI with Mercadolibre style:
```swift
final class ExampleTheme: PXTheme {
    let primaryColor: UIColor = #colorLiteral(red: 1, green: 0.9176470588, blue: 0.4705882353, alpha: 1)

    public func navigationBar() -> PXThemeProperty {
        return PXThemeProperty(backgroundColor: primaryColor, tintColor: #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1))
    }

    public func loadingComponent() -> PXThemeProperty {
        return PXThemeProperty(backgroundColor: primaryColor, tintColor: #colorLiteral(red: 0.2039215686, green: 0.5137254902, blue: 0.9803921569, alpha: 1))
    }

    public func highlightBackgroundColor() -> UIColor {
        return primaryColor
    }

    public func detailedBackgroundColor() -> UIColor {
        return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

    public func statusBarStyle() -> UIStatusBarStyle {
        return .default
    }
}
```

## 🔠 Custom Fonts
You can set your custom Font by `PXTheme` protocol. Implement the following 3 optional methods:
```swift
@objc optional func fontName() -> String?
@objc optional func lightFontName() -> String?
@objc optional func semiBoldFontName() -> String?
```

## 📈 Tracking
We provide `PXTrackerListener` protocol to notify each tracking event. You can subscribe to this protocol using `PXTracker`.

### Implement PXTrackerListener protocol.
```swift
@objc public protocol PXTrackerListener: NSObjectProtocol {
    func trackScreen(screenName: String, extraParams: [String: Any]?)
    func trackEvent(screenName: String?, action: String!, result: String?, extraParams: [String: Any]?)
}
```

### Set listener
```swift
PXTracker.setListener(self)
```

### 📋 Supported OS & SDK Versions
* iOS 9.0+
* Swift 4.2
* xCode 9.2+
* @Objc full compatibility

### 🔮 Project Example
This project include an example project using MeliCardDrawer and other target with xCTests test cases.

### 📚 Documentation
:TODO:

## ❤️ Feedback
This is an open source project, so feel free to contribute. How? -> Fork this project and propose your own fixes, suggestions and open a pull request with the changes.

## 👨🏻‍💻 Author
Mercado Libre - Mercado Pago

## 👮🏻 License

```
Copyright 2019 Mercadolibre Developers

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```