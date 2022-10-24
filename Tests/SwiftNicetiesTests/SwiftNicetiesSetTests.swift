//
//  SwiftNicetiesSetTests.swift
//  
//
//  Created by synapticloop on 24/10/2022.
//

import XCTest;
@testable import SwiftNiceties;

final class SwiftNicetiesSetTests: XCTestCase {

	override func setUpWithError() throws {
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}

	override func tearDownWithError() throws {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
	}

	func testPut() throws {
		var stringSet: Set<String> = [ "one", "two", "three" ]
		stringSet.put("four")
		XCTAssertTrue(stringSet.contains("four"));

		var intSet: Set<Int> = [ 1, 2, 3]
		intSet.put(4)
		XCTAssertTrue(intSet.contains(4));
	}

	func testPerformanceExample() throws {
//		// This is an example of a performance test case.
//		self.measure {
//			// Put the code you want to measure the time of here.
//		}
	}

}
