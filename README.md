[![Swift 5.3](https://img.shields.io/badge/swift-5.3-ED523F.svg?style=flat)](https://swift.org/download/)
[![@hikeland](https://img.shields.io/twitter/follow/hikeland?label=Hikeland&style=social)](https://twitter.com/hikeland)

# Custom TabBar in SwiftUI

![Image](screenshot.gif)

# Issues that led me to create my own TabBar

TabView in SwiftUI has two important problems to me:
* It does not allow notification badges
* We cannot hide the tabBar when opening a NavigationLink inside a tab

# What this sample app does

This sample code shows how we can create easily our own custom TabBar with ZStack.
* Views are stored as properties in the ContentView to keep the current navigation state when changing tabs.
* The SecondView shows how it should built if we need to hide the TabBar during the navigation.

Feel free to ask me your questions on [Twitter](https://twitter.com/hikeland).