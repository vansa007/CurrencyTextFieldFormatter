# CurrencyTextFieldFormatter
Control textfield

US Dollar currency textfield(sophearatx)

<img src="https://github.com/vansa007/CurrencyTextFieldFormatter/blob/master/44611045-83D7-44EF-8521-44C9492793BB.jpg?raw=true" width=320 height=640>

#Setting on storyboard
- Maximum digit
- Enable/disable fraction

<img src="https://github.com/vansa007/CurrencyTextFieldFormatter/blob/master/Screen%20Shot%202017-12-06%20at%2010.24.50%20AM.png?raw=true" width=450 height=200>

Video here: https://github.com/vansa007/CurrencyTextFieldFormatter/blob/master/ScreenRecording_12-06-2017%2010:16.mp4

Don't forget check in shouldChangeCharactersIn of UITextFieldDelegate<br>
```swift
func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    if textField == self.myCurrencyTextField && string == "." {
        let countdots = textField.text?.components(separatedBy: ".")
        if (countdots?.count)! >= 2 {
            return false
        }
    }
    return true
}
```

If have any issues, please feedback me soon. Thanks you!
Best thanks to KSHRD center.
