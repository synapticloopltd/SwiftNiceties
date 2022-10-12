//
//  SwiftNicetiesDateFormatterTests.swift
//  
//
//  Created by synapticloop on 13/10/2022.
//

import XCTest;
@testable import SwiftNiceties;

final class SwiftNicetiesDateFormatterTests: XCTestCase {
	let dateformatter: DateFormatter = DateFormatter("yyyy-MM-dd hh:mm:ss");
	let date: Date = Date(timeIntervalSince1970: 1665610388);

	func testInit() throws {
		XCTAssertEqual(dateformatter.string(from: date), "2022-10-13 08:33:08");
	}

	func testInitYears() throws {
		let dateformatter: DateFormatter = DateFormatter("yyyy");
		XCTAssertEqual(dateformatter.string(from: date), "2022");
	}

	func testFormat() throws {
		XCTAssertEqual(dateformatter.format(date: date), "2022-10-13 08:33:08");
	}
}
