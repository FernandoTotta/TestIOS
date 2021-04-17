//
//  PalidromeTest.swift
//  TesteIOSTests
//
//  Created by Fernando Totta on 17/04/21.
//

import XCTest

class PalidromeTest: XCTestCase {
    
    func testVerifyPalindrome() {
        XCTAssertTrue(Seeds.PalindromeTest.init().isPalindrome)
    }
    
    func testVerifyNotPalindrome() {
        XCTAssertFalse(Seeds.PalindromeTest.init().notPalindrome)
    }
    
    func testVerifyTwoLetter() {
        XCTAssertFalse(Seeds.PalindromeTest.init().twoWords)
    }
}
