//
//  String+Utilities.swift
//  StringUtilities
//
//  Created by Artem Mihaylov on 26.10.2017.
//  Copyright © 2017 Artem Mihaylov. All rights reserved.
//

import Foundation


extension String {
    
    // MARK: - E-mail
    
    /**
       Checks if string is correct e-mail
     - returns:  Correctness of e-mail in string
     */
    func isCorrectEmail() -> Bool {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", regex)
        return emailPredicate.evaluate(with: self)
    }
    
    // MARK: - Phone
    
    static private let defaultFormat = "00000000000"
    static private var _phoneFormat = String.defaultFormat
    
    /**
     General phone format for strings, may contains digits and separating symbols: - _/\\()[]<>{},.@\":;+=&#~
     
     default value is "00000000000"
     */
    static public var phoneFormat: String {
        get {
            return _phoneFormat
        }
        set {
            let separatorsSet = CharacterSet(charactersIn: " -_/\\()[]<>{},.@\":;+=&#~")
            var digitsCount = 0
            for character in newValue.unicodeScalars {
                if CharacterSet.decimalDigits.contains(character) {
                    digitsCount += 1
                } else {
                    if !separatorsSet.contains(character) {
                        return
                    }
                }
            }
            if digitsCount == 11 {
                _phoneFormat = newValue
            }
        }
    }
    
    /**
     Get phone string with default phone format (check default value of String.phoneFormat)
     - returns:  Phone string, which is conforms to default phone format
     */
    func defaultFormatPhone() -> String {
        return self.formatPhone(withFormat: String.defaultFormat)
    }
    
    /**
     Get phone string with specified phone format
     - Parameter format: Specified format, default is String.phoneFormat
     - returns:  Phone string, which is conforms to specified phone format
     */
    func formatPhone(withFormat format: String = String.phoneFormat) -> String {
        let digitsSet: Set<Character> = Set(["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"])
        var formatIndex = 0
        var stringIndex = 0
        var resultString = ""
        while formatIndex < format.characters.count {
            let formatCharacter = format[format.index(format.startIndex, offsetBy: formatIndex)]
            formatIndex += 1
            if digitsSet.contains(formatCharacter) {
                while stringIndex < self.characters.count {
                    let stringCharacter = self[self.index(self.startIndex, offsetBy: stringIndex)]
                    stringIndex += 1
                    if digitsSet.contains(stringCharacter) {
                        resultString += String(stringCharacter)
                        break
                    }
                }
                if stringIndex == self.characters.count {
                    return resultString
                }
            } else {
                resultString += String(formatCharacter)
            }
            if formatIndex == format.characters.count {
                return resultString
            }
        }
        return resultString
    }
    
    // MARK: - Date
    
    private static let defaultDateFormat = "yyyy-MM-dd HH:mm"
    
    /**
     General date format for strings
     
     default value is "yyyy-MM-dd HH:mm"
     */
    public static var dateFormat = String.defaultDateFormat
    
    /**
     Initializes string from given date and format
     - Parameter date: Date to create string from
     - Parameter format: Specified format, default is String.dateFormat
     - returns:  String from date, which is conforms to specified format
     */
    init(withDate date: Date, format: String = String.dateFormat) {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        self = formatter.string(from: date)
    }
    
    /**
     Initializes string from given date and default format (check default value of String.dateFormat)
     - Parameter date: Date to create string from
     - Parameter format: Specified format, default is String.dateFormat
     - returns:  String from date, which is conforms to default format
     */
    init(withDefaultFormatAndDate date: Date) {
        let formatter = DateFormatter()
        formatter.dateFormat = String.defaultDateFormat
        self = formatter.string(from: date)
    }
    
    /**
     Converts string to date with specified format
     - Parameter format: Specified format, default is String.dateFormat
     - returns:  Date, if can date string is comforms to specified format, nil otherwise
     */
    func toDate(withFormat format: String = String.dateFormat) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.date(from: self)
    }
    
    /**
     Converts string to date with default format (check default value of String.dateFormat)
     - returns:  Date, if can date string is comforms to default format, nil otherwise
     */
    func toDateWithDefaultFormat() -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = String.defaultDateFormat
        return formatter.date(from: self)
    }

}

