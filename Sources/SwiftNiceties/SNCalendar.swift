//
// SNCalendar.swift
//
//
// Created by syanpticloop on 29/09/2023.
//
// (c) synapticloop 2023
//


import Foundation;

/**
 SNCalendar
 */

public class SNCalendar {
	public var date: Date;

	public enum Field {
		case
		ERA,
		YEAR,
		MONTH,
		WEEK_OF_YEAR,
		WEEK_OF_MONTH,
		DATE,
		DAY_OF_MONTH,
		DAY_OF_YEAR,
		DAY_OF_WEEK,
		DAY_OF_WEEK_IN_MONTH,
		AM_PM,
		HOUR,
		HOUR_OF_DAY,
		MINUTE,
		SECOND,
		MILLISECOND
	}
//	public static let ERA: Int = 0;
//	public static let YEAR: Int = 1;
//	public static let MONTH: Int = 2;
//	public static let WEEK_OF_YEAR: Int = 3;
//	public static let WEEK_OF_MONTH: Int = 4;
//	public static let DATE: Int = 5;
//	public static let DAY_OF_MONTH: Int = 5;
//	public static let DAY_OF_YEAR: Int = 6;
//	public static let DAY_OF_WEEK: Int = 7;
//	public static let DAY_OF_WEEK_IN_MONTH: Int = 8;
//	public static let AM_PM: Int = 9;
//	public static let HOUR: Int = 10;
//	public static let HOUR_OF_DAY = 11;
//	public static let MINUTE: Int = 12;
//	public static let SECOND: Int = 13;
//	public static let MILLISECOND: Int = 14;
//	public static let ZONE_OFFSET: Int = 15;
//	public static let DST_OFFSET: Int = 16;
//	public static let FIELD_COUNT: Int = 17;


	private init() {
		date = Date();
	}

	/**
	 Get an instance of the calendar
	 */
	public static func getInstance() -> SNCalendar {
		return(SNCalendar());
	}

	public func getTimeInMillis() -> Int64 {
		return(Int64(date.timeIntervalSince1970 * 1000));
	}

	public func getTime() -> Date {
		return(date);
	}
	
	/// Set the time in milliseconds - note that this method divides the passed in
	/// method by 1000 as the Swift call returns a 1000 tiems the actual value
	///
	/// - Parameter millis: The number of milliseconds
	public func setTimeInMillis(millis: Int64) {
		date = Date(timeIntervalSince1970: TimeInterval(millis/1000));
	}

	public func setTimeInMillis(doubleMillis: Double) {
		date = Date(timeIntervalSince1970: TimeInterval(Int64(doubleMillis)));
	}

	/**
	 * Adds or subtracts the specified amount of time to the given calendar field,
	 * based on the calendar's rules. For example, to subtract 5 days from
	 * the current time of the calendar, you can achieve it by calling:
	 * <p>{@code add(SNCalendar.DAY_OF_MONTH, -5)}.
	 * 
	 * - Parameters:
	 *   - field: The field to add to or subtract from see SNCalendar.Field.*
	 *   - amount: The amount to add (or to subtract if negative)
	 * - Returns: Void
	 */

	public func add(_ field: Field, _ amount: Int) throws -> Void {
		if (amount == 0) {
			return;
		}

		switch field {
			case SNCalendar.Field.YEAR:
				date = Calendar.current.date(byAdding: .year, value: amount, to: date)!
				break;

			case SNCalendar.Field.MONTH:
				date = Calendar.current.date(byAdding: .month, value: amount, to: date)!
				break;

			case SNCalendar.Field.DATE:
				fallthrough;
			case SNCalendar.Field.DAY_OF_MONTH:
				date = Calendar.current.date(byAdding: .day, value: amount, to: date)!
				break;

			case SNCalendar.Field.HOUR:
				fallthrough
			case SNCalendar.Field.HOUR_OF_DAY:
				date = Calendar.current.date(byAdding: .hour, value: amount, to: date)!

			default:
				throw NSError();
		}

	}

	public func get(_ field: Field) throws -> Int {
		switch field {
			case Field.MONTH:
				return((Calendar.current.dateComponents([.month], from: date)).month!);
			case Field.YEAR:
				return((Calendar.current.dateComponents([.year], from: date)).year!);
			case Field.DATE:
				fallthrough
			case Field.DAY_OF_MONTH:
				return((Calendar.current.dateComponents([.day], from: date)).day!);
			default:
				throw NSError();

		}
	}

	public func toString() -> String {
		return("\(date)");
	}
}
