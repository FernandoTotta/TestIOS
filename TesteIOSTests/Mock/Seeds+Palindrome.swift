//
//  Seeds+Palindrome.swift
//  TesteIOSTests
//
//  Created by Fernando Totta on 17/04/21.
//

@testable import TesteIOS

import Foundation

extension Seeds {
    struct PalindromeTest {
        var isPalindrome = Palindrome.isPalindrome(word: "Omo")// true
        var notPalindrome = Palindrome.isPalindrome(word: "test")// false
        var twoWords = Palindrome.isPalindrome(word: "om")
    }
}
