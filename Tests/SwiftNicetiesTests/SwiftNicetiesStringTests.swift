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
	let harbinger = "The harbinger of DOOM cried: MoTHer mE.";
	let characters = "😊🎂🙌🏡🪟漢堡很好吃😊Whatever";

	func testStartsWith() throws {
		XCTAssertEqual(hamburger.startsWith("ham"), true);
		XCTAssertEqual(hamburger.startsWith("bur"), false);

		XCTAssertEqual(characters.startsWith("😊"), true);
		XCTAssertEqual(characters.startsWith("😊🎂🙌"), true);
	}

	func testContains() throws {
		XCTAssertEqual(hamburger.contains("ham"), true);
		XCTAssertEqual(hamburger.contains("urge"), true);

		XCTAssertEqual(characters.contains("🙌🏡🪟"), true);
		XCTAssertEqual(characters.contains("吃😊W"), true);
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


	func testToLowerCase() throws {
		XCTAssertEqual(harbinger.toLowerCase(), "the harbinger of doom cried: mother me.");
		XCTAssertEqual(characters.toLowerCase(), "😊🎂🙌🏡🪟漢堡很好吃😊whatever");
	}

	func testToCharArray() throws {
		XCTAssertEqual(characters.toCharArray().count, characters.count);
		XCTAssertEqual(characters.toCharArray()[0], "😊");
		XCTAssertEqual(characters.toCharArray()[6], "堡");
	}

	func testSubscript() throws {
		XCTAssertEqual(characters[0], "😊");
		XCTAssertEqual(characters[6], "堡");
	}

	func testTrim() throws {
		XCTAssertEqual("        ".trim(), "");
		XCTAssertEqual(
"""
 \n
	lots of whitespace characters


\t\t\t   \n

"""
	.trim(), "lots of whitespace characters");
	}

	func testSha256() throws {
		let contents: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
		let sha256: String = "2D8C2F6D978CA21712B5F6DE36C9D31FA8E96A4FA5D8FF8B0188DFB9E7C171BB".lowercased();
		XCTAssertEqual(sha256, contents.sha256())
	}

}
