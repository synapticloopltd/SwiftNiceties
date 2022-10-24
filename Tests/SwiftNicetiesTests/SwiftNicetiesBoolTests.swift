//
//  SwiftNicetiesBoolTests.swift
//
//
//  Created by synapticloop on 24/10/2022.
//

import XCTest;
@testable import SwiftNiceties;

final class SwiftNicetiesBoolTests: XCTestCase {

	override func setUpWithError() throws {
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}

	override func tearDownWithError() throws {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
	}

	func testStringInit() throws {
		var trueVar: Bool = Bool(fromString: "true")
		XCTAssertTrue(trueVar);
		trueVar = Bool(fromString: "1")
		XCTAssertTrue(trueVar);
		trueVar = Bool(fromString: "0")
		XCTAssertFalse(trueVar);
		trueVar = Bool(fromString: "false")
		XCTAssertFalse(trueVar);
		trueVar = Bool(fromString: "something")
		XCTAssertFalse(trueVar);
		trueVar = Bool(fromString: "whatevs")
		XCTAssertFalse(trueVar);
	}

	func testPerformanceExample() throws {
//		// This is an example of a performance test case.
//		self.measure {
//			// Put the code you want to measure the time of here.
//		}
	}

}
