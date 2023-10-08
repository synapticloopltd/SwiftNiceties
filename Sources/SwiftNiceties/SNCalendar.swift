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
	// By default swift stores the date as a double - with the milliseconds after
	// the decimal point
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
		DAY_OF_YEAR, // may not be available
		DAY_OF_WEEK, // may not be available
		DAY_OF_WEEK_IN_MONTH,
		AM_PM, // may not be available
		HOUR,
		HOUR_OF_DAY,
		MINUTE,
		SECOND,
		MILLISECOND // this needs to be translated to milliseconds
	}

	private init() {
		date = Date();
	}
	
	/// Get an instance of the Calendar, set to the current date and time
	///
	/// - Returns: The SNCalendar instance
	public static func getInstance() -> SNCalendar {
		return(SNCalendar());
	}


	/// Return the number of milliseconds since the UNIX epoch
	///
	/// - Returns: The number of milliseconds since the epoch
	public func getTimeInMillis() -> Int64 {
		return(Int64(date.timeIntervalSince1970 * 1000));
	}

	public func getTime() -> Date {
		return(date);
	}
	
	/// Set the time in milliseconds - note that this method divides the passed in
	/// method by 1000 as the Swift call uses a double to set the date, with the
	/// millis after the decimal place
	///
	/// - Parameter millis: The number of milliseconds
	public func setTimeInMillis(millis: Int64) {
		date = Date(timeIntervalSince1970: TimeInterval(millis/1000));
		// TODO: need to ensure we don't leave any remainder
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
			case SNCalendar.Field.ERA:
				date = Calendar.current.date(byAdding: .era, value: amount, to: date)!
				break;
			case SNCalendar.Field.YEAR:
				date = Calendar.current.date(byAdding: .year, value: amount, to: date)!
				break;

			case SNCalendar.Field.MONTH:
				date = Calendar.current.date(byAdding: .month, value: amount, to: date)!
				break;

			case Field.WEEK_OF_YEAR:
				date = Calendar.current.date(byAdding: .weekOfYear, value: amount, to: date)!
				break;

			case Field.WEEK_OF_MONTH:
				date = Calendar.current.date(byAdding: .weekOfMonth, value: amount, to: date)!
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
				break;

			case SNCalendar.Field.MINUTE:
				date = Calendar.current.date(byAdding: .minute, value: amount, to: date)!
				break;

			case SNCalendar.Field.SECOND:
				date = Calendar.current.date(byAdding: .second, value: amount, to: date)!
				break;

			default:
				throw NSError();
		}

	}
	
	/// Get a specific field from the reference date
	///
	/// - Parameter field: The SNCalendar.Field enum field to get
	/// - Returns: The field from the reference date
	public func get(_ field: Field) throws -> Int {
		switch field {
			case Field.ERA:
				return((Calendar.current.dateComponents([.era], from: date)).year!);

			case Field.YEAR:
				return((Calendar.current.dateComponents([.year], from: date)).year!);

			case Field.MONTH:
				return((Calendar.current.dateComponents([.month], from: date)).month!);

			case Field.WEEK_OF_YEAR:
				return((Calendar.current.dateComponents([.weekOfYear], from: date)).day!);

			case Field.WEEK_OF_MONTH:
				return((Calendar.current.dateComponents([.weekOfMonth], from: date)).day!);

			case Field.DATE:
				fallthrough
			case Field.DAY_OF_MONTH:
				return((Calendar.current.dateComponents([.day], from: date)).day!);

			case Field.HOUR:
				fallthrough
			case Field.HOUR_OF_DAY:
				return((Calendar.current.dateComponents([.hour], from: date)).day!);

			case Field.MINUTE:
				return((Calendar.current.dateComponents([.minute], from: date)).day!);

			case Field.SECOND:
				return((Calendar.current.dateComponents([.second], from: date)).day!);

			default:
				throw NSError();

		}
	}

	/// Returns the date as a ISO date
	/// - Returns: The date formatted as a string
	public func toString() -> String {
		return("\(date)");
	}
}
