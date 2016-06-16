//: Playground - noun: a place where people can play

import UIKit

func isPalindrome(palindrome: String) -> Bool {
    
    print(palindrome)
    if (palindrome == "" || palindrome.characters.count == 1){
        return true
    }
    else {
        if palindrome.characters.first == palindrome.characters.last {
            return isPalindrome(palindrome.substringWithRange(palindrome.startIndex.successor() ..< palindrome.endIndex.predecessor()))
        } else {
            return false
        }
    }
}

extension String {
    var lettersOnly: String {
        return componentsSeparatedByCharactersInSet(NSCharacterSet.letterCharacterSet().invertedSet).joinWithSeparator("")
    }
    var potentialPalindrome: Bool {
        return String(characters.reverse()).lettersOnly.lowercaseString == lettersOnly.lowercaseString
    }
}

func checkPalindrome(palindrome: String) -> Bool {
    let chars = Array(palindrome.lettersOnly.lowercaseString.characters)
    for index in  0..<chars.count/2 {
        if chars[index] != chars[chars.count.predecessor() - index] {
            return false
        }
    }
    return true
}

"Dammit im mad".potentialPalindrome
"Socorram-me subi no onibus em marrocos".potentialPalindrome
    
isPalindrome("dammit im mad")
isPalindrome("dammitimmad")
isPalindrome("racecar")