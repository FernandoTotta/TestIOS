//
//  Seeds+Path.swift
//  TesteIOSTests
//
//  Created by Fernando Totta on 17/04/21.
//

import Foundation
@testable import TesteIOS

extension Seeds {
    struct PathTest {
        static let basePath = "a/b/c/d"
        static let morePath = "e/f"
        static let pathTwoDots = "../x"
        static let newPath = "/d"
        static let error = "%"
        static let pathMock = Path(currentPath: basePath)
    }
}
