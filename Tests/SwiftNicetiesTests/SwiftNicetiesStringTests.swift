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

	func testSha256() throws {
		let contents: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
		let sha256: String = "2D8C2F6D978CA21712B5F6DE36C9D31FA8E96A4FA5D8FF8B0188DFB9E7C171BB".lowercased();
		XCTAssertEqual(sha256, contents.sha256())
	}
	
}
