//
//  PathTest.swift
//  TesteIOSTests
//
//  Created by Fernando Totta on 17/04/21.
//

import XCTest
@testable import TesteIOS

class PathTest: XCTestCase {

    let path = Path(currentPath: Seeds.PathTest.basePath)
    
    func testTwoDots() {
        path.cd(path: Seeds.PathTest.pathTwoDots)
        XCTAssertEqual("a/b/c/x", path.currentPath)
    }
    
    func testMorePath() {
        path.cd(path: Seeds.PathTest.morePath)
        XCTAssertEqual("a/b/c/d/e/f", path.currentPath)
    }
    
    func testErrorPath() {
        path.cd(path: Seeds.PathTest.error)
        XCTAssertEqual("InvalidPathExpression", path.currentPath)
    }
    
    func testInvalidRegex() {
        path.pattern = ""
        path.cd(path: Seeds.PathTest.error)
        XCTAssertEqual("InvalidPathExpression", path.currentPath)
    }
}
