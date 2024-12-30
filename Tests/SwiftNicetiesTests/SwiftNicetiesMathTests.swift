////
// SwiftNicetiesMathTests.swift
// 
//
// Created by syanpticloop on 09/10/2023.
//
// (c) synapticloop 2023
//


import XCTest;
import SwiftNiceties;

final class SwiftNicetiesMathTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMin() throws {
			XCTAssertEqual(Math.min(10, 7), 7);
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
