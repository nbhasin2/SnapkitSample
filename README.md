# SnapkitSample
Programmatically create views using NSLayoutAnchor and Snapkit in Swift, XCode 11.4.1

This is a simple repo to show how you can easily programatically create views using Snapkit and NSLayoutAnchor.

**How to run**

- Clone the repo
- Open the project SnapKitSample in XCode 
- Run 

**How to toggle between three view controllers**

- Open the project SnapKitSample in XCode
- Go to SceneDelegate.swift
- Change the rootview controller to the view controller you want to play around with
- Run 
```
// Toggle between:
// AnchorConstraintViewController()
// SnapkitViewController()
// let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
// let mainStoryboardViewController = mainStoryboard.instantiateViewController(withIdentifier: "MainStoryboardViewController")
// Comment the ones you don't want to show.
window?.rootViewController = AnchorConstraintViewController() // AnchorConstraintViewController
window?.rootViewController = SnapkitViewController() // SnapkitViewController
window?.rootViewController = SnapkitViewController() // MainStoryboardViewController
```

There is a BaseConstraintViewController which has all the views initialized in a closure format. 
These views are used in AnchorConstraintViewController and SnapkitViewController as they are subclasses of BaseConstraintViewController. Both the viewcontrollers have same views and same set of constraints to allow users to understand how Snapkit and NSLayoutAnchor work and their similarities 

**AnchorConstraintViewController**
- Contains constraints made programatically via NSLayoutAnchor

**SnapkitViewController**
- Contains constraints made programatically via Snapkit

**MainStoryboardViewController**
- Containts constraints made in storyboard xib 
- Has viewcontroller xib in a storyboard _Main.storyboard_ and its counterpart MainStoryboardViewController.swift
- Together it shows how you can have a view controller in a storyboard instantiated via SceneDelegate  

![alt text](https://user-images.githubusercontent.com/8919439/83282736-05141000-a1a8-11ea-977c-2afe9ee5f5b1.png)
