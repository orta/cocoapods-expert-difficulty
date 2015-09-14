# CocoaPods Expert Difficulty

Is forcing everyone to update to `watchOS` or `tvOS` getting you down? Well now you can say "screw you CocoaPods, I know what I'm doing". Then CocoaPods will allow you to use any pod on any platform.

This can break things. Obviously. So, err, use it for hacking, then do it properly.

## Installation

Use a Gemfile. [Here's a guide](http://guides.cocoapods.org/using/a-gemfile.html)

Gemfile:
```
gem "cocoapods"
gem "cocoapods-expert-difficulty"
```

Podfile:
```
plugin "cocoapods-expert-difficulty"
[...]
```

Then use `bundle exec pod install`
