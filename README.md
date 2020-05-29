# SnapkitSample
Programmatically create views using NSLayoutAnchor and Snapkit in Swift, XCode 11.4.1

This is a simple repo to show how you can easily programatically create views using Snapkit and NSLayoutAnchor.

How to run? 

- Clone the repo
- Open the project SnapKitSample in XCode 
- Run 

How to toggle between two view controllers

- Open the project SnapKitSample in XCode
- Go to SceneDelegate.swift
- Change the rootview controller to the view controller you want to play around with
- Run 
```
// Toggle between:
// AnchorConstraintViewController()
// SnapkitViewController()
window?.rootViewController = AnchorConstraintViewController()
```
![alt text](https://user-images.githubusercontent.com/8919439/83282736-05141000-a1a8-11ea-977c-2afe9ee5f5b1.png)
