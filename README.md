# Theme

Configure Theme and automatic apply for UITextView / UILabel / UIButton ...

## Installation

Import folder Theme_src.swift in your project (or use example project)

## Usage 

Initialise library "Theme" in your AppDelegate in didFinishLaunchingWithOptions method : 

```Swift
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Call swizzleExtension, this extention apply theme for all View in all UIViewController ! 
        UIViewController.swizzleExtension()
        return true
    }
```

Configure "Theme" for UIView Element (is better in your AppDelegate in didFinishLaunchingWithOptions) :

##### UITextField
```Swift 
    UITextField.initTheme(fontSize: 14, fontName: "HelveticaNeu", textColor: UIColor.brown, backgroundColor: UIColor.lightGray, borderColor: UIColor.black, borderStyle: .bezel)
 ```
 
##### UILabel
```Swift  
   UILabel.initTheme(fontSize: 18, fontName: "HelveticaNeu", textColor: UIColor.darkText, backgroundColor: UIColor.red)
```

##### UIButton
```Swift  
   UIButton.initTheme(fontSize: 28, fontName: "Helvetica", textColor: UIColor.white, backgroundColor: UIColor.darkGray, cornerRadius: 8)
```

##### UITextView
```Swift  
    UITextView.initTheme(fontSize: 16, fontName: "Helvetica", textColor: UIColor.white, backgroundColor: UIColor.darkGray)
```


By default, Theme is no activated, in IB, select view and switch "withTheme" to "On" :

![Img](https://github.com/LeBzul/Theme/blob/master/ib_theme.png)

Or in code (in viewDidLoad) :
```Swift
   let label = UILabel(frame: CGRect(x: 0, y: 0, width: 120, height: 35))
   label.withTheme = true
```      

  
