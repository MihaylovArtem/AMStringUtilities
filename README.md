## AMStringUtilities

`AMStringUtilities` is an extension for String struct in Swift, that gives you some advantages for using phone, e-mail and date strings

## Getting started

### From CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C and Swift, which automates and simplifies the process of using 3rd-party libraries like `AMStringUtilities` in your projects. First, add the following line to your [Podfile](http://guides.cocoapods.org/using/using-cocoapods.html):

```ruby
pod 'AMStringUtilities'
```

Second, install `AMStringUtilities` into your project:

```ruby
pod install
```

### Manually

Drag the `AMStringUtilities/AMStringUtilities` folder into your project.

## Usage

### E-mail

You can check if your string is correct e-mail by using:

```Swift
let isCorrect = yourEmailString.isCorrectEmail()
```
### Phone

You can set your phone format for all strings you will use by setting property ```phoneFormat``` of String struct

```Swift
String.phoneFormat = "+0 (000) 000-00-00" // Default value: 00000000000
```
Note, that you need to set correct phone format, it should contain 11 digits and separating symbols: ``` -_/\\()[]<>{},.@\":;+=&#~```. Otherwise default format will be used.

To get phone string with format, you can use following methods:
```Swift
let formattedPhone = stringToFormat.formatPhone() // using general phone format (specified in String.phoneFormat)
let formattedPhone = stringToFormat.formatPhone(withFormat: "0(000)-00-00-000") // using specific phone format
let formattedPhone = stringToFormat.defaultFormatPhone() // using default phone format
```
Note, that all these methods will convert any string, if string will contain more than 11 digits, first 11 will be used.

### Date

You can set your date format for all strings you will use by setting property ```dateFormat``` of String struct
```Swift
String.dateFormat = "yyyy.MM.dd HH-mm" // Default value: yyyy-MM-dd HH:mm
```
Note, that you need to set correct date format, otherwise default format will be used.

To get date from string with format, use following methods:
```Swift
let date = dateString.toDate() // using general date format (specified in String.dateFormat)
let date = dateString.toDate(withFormat: "dd.MM.yyyy HH:mm") // using specific date format
let date = dateString.toDateWithDefaultFormat() // using default date format
```
Note that all these method return ```Date?```, if ```dateString``` will not match the format, ```nil``` will be returned

To get string from date with date format use following methods:
```Swift
let dateString = String(withDate: date) // using general date format (specified in String.dateFormat)
let dateString = String(withDate: date, format: "dd.MM.yyyy HH:mm") // using specific date format
let dateString = String(withDefaultFormatAndDate: date) // using default date format
```

## License

`AMStringUtilities` is distributed under the terms and conditions of the [MIT license](https://github.com/MihaylovArtem/AMStringUtilities/blob/master/LICENSE.txt).

## Credits

`AMStringUtilities` is developed by [Artem Mihaylov](http://mihaylovartem.ru).
If you're using `AMStringUtilities` in your project, attribution would be very appreciated.
