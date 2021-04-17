//
//  Palindrome.swift
//  TesteIOS
//
//  Created by Fernando Totta on 17/04/21.
//

import Foundation

class Palindrome {
    static func isPalindrome(word: String) -> Bool {
        let lower = word.lowercased()
        
        guard lower.count >= 2 else { return false }
        
        let end = lower.index(lower.endIndex, offsetBy: -1)
        
        if lower[lower.startIndex] == lower[end] {
            return true
        }else {
            return false
        }
    }
}
