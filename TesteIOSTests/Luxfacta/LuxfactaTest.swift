//
//  LuxfactaTest.swift
//  TesteIOSTests
//
//  Created by Fernando Totta on 17/04/21.
//

import XCTest
@testable import TesteIOS


class LuxfactaTest: XCTestCase {

    func testNumberBy3() {
        let seeds = Seeds.LuxFacta.lux
        XCTAssertEqual("Lux",seeds.say())
    }
    
    func testNumberBy5() {
        let seeds = Seeds.LuxFacta.facta
        XCTAssertEqual("Facta", seeds.say())
    }
    
    func testNumberBy3And5() {
        let seeds = Seeds.LuxFacta.luxfacta
        XCTAssertEqual("LuxFacta", seeds.say())
    }
    
    func testOnlyNumber() {
        let seeds = Seeds.LuxFacta.number
        XCTAssertEqual("\(seeds.n)", seeds.say())
    }
}
