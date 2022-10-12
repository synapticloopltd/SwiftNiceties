//
//  SwiftNicetiesDateFormatterTests.swift
//
//
//  Created by synapticloop on 13/10/2022.
//

import XCTest

@testable import SwiftNiceties;

final class SwiftNicetiesStringTests: XCTestCase {
	let hamburger = "hamburger";
	let characters = "😊🎂🙌🏡🪟漢堡很好吃😊";
	
	func testStartsWith() throws {
		XCTAssertEqual(hamburger.startsWith("ham"), true);
		XCTAssertEqual(hamburger.startsWith("bur"), false);
	}
	
	func testSubstring() throws {
		XCTAssertEqual(hamburger.substring(3), "burger");
		XCTAssertEqual(hamburger.substring(4, 8), "urge");
	}

	func testIndexOf() throws {
		XCTAssertEqual(hamburger.indexOf("ham"), 0);
		XCTAssertEqual(hamburger.indexOf("bur"), 3);
		XCTAssertEqual(hamburger.indexOf("nope"), nil);
		
		XCTAssertEqual(characters.indexOf("😊"), 0);
	}
	
}
