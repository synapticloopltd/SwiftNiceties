////
// SwiftNicetiesSNCalendarTests.swift
//
//
// Created by syanpticloop on 29/09/2023.
//
// (c) synapticloop 2023
//


import XCTest
import SwiftNiceties;

final class SwiftNicetiesSNCalendarTests: XCTestCase {
	let date: Date = Date(timeIntervalSince1970: 1077886800);

	override func setUpWithError() throws {
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}

	override func tearDownWithError() throws {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
	}

	func testSNCalendarAdd() throws {
		// this is the 28th Feb 2004 (which is a leap year...)

		let calendar: SNCalendar = SNCalendar.getInstance();
		calendar.setTimeInMillis(millis: 1077886800);

		try calendar.add(SNCalendar.Field.DAY_OF_MONTH, 1);
		try XCTAssertEqual(29, calendar.get(SNCalendar.Field.DAY_OF_MONTH));

		try calendar.add(SNCalendar.Field.DAY_OF_MONTH, 1);
		try XCTAssertEqual(1, calendar.get(SNCalendar.Field.DAY_OF_MONTH));
		try XCTAssertEqual(3, calendar.get(SNCalendar.Field.MONTH));
		try XCTAssertEqual(2004, calendar.get(SNCalendar.Field.YEAR));

		try calendar.add(SNCalendar.Field.DATE, -2);
		try XCTAssertEqual(28, calendar.get(SNCalendar.Field.DAY_OF_MONTH));
		try XCTAssertEqual(2, calendar.get(SNCalendar.Field.MONTH));

		// now try for adding zero - it should do nothing
		try calendar.add(SNCalendar.Field.DATE, 0);
		try calendar.add(SNCalendar.Field.DAY_OF_WEEK, 0);
		try calendar.add(SNCalendar.Field.MONTH, 0);
		try calendar.add(SNCalendar.Field.YEAR, 0);
		try XCTAssertEqual(28, calendar.get(SNCalendar.Field.DAY_OF_MONTH));
		try XCTAssertEqual(2, calendar.get(SNCalendar.Field.MONTH));

		try calendar.add(SNCalendar.Field.MONTH, 2);
		try XCTAssertEqual(4, calendar.get(SNCalendar.Field.MONTH));

		try calendar.add(SNCalendar.Field.MONTH, 12);
		try XCTAssertEqual(2005, calendar.get(SNCalendar.Field.YEAR));
		try XCTAssertEqual(4, calendar.get(SNCalendar.Field.MONTH));

		try calendar.add(SNCalendar.Field.YEAR, -1);
		try XCTAssertEqual(2004, calendar.get(SNCalendar.Field.YEAR));

	}
}
