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

	public static let ERA: Int = 0;
	public static let YEAR: Int = 1;
	public static let MONTH: Int = 2;
	public static let WEEK_OF_YEAR: Int = 3;
	public static let WEEK_OF_MONTH: Int = 4;
	public static let DATE: Int = 5;
	public static let DAY_OF_MONTH: Int = 5;
	public static let DAY_OF_YEAR: Int = 6;
	public static let DAY_OF_WEEK: Int = 7;
	public static let DAY_OF_WEEK_IN_MONTH: Int = 8;
	public static let AM_PM: Int = 9;
	public static let HOUR: Int = 10;
	public static let HOUR_OF_DAY = 11;
	public static let MINUTE: Int = 12;
	public static let SECOND: Int = 13;
	public static let MILLISECOND: Int = 14;
	public static let ZONE_OFFSET: Int = 15;
	public static let DST_OFFSET: Int = 16;
	public static let FIELD_COUNT: Int = 17;


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
		return(Date(timeIntervalSince1970: date.timeIntervalSince1970));
	}
	/**
	 * Adds or subtracts the specified amount of time to the given calendar field,
	 * based on the calendar's rules. For example, to subtract 5 days from
	 * the current time of the calendar, you can achieve it by calling:
	 * <p>{@code add(Calendar.DAY_OF_MONTH, -5)}.
	 *
	 * @param field the calendar field.
	 * @@param amount the amount of date or time to be added to the field.
	 */

	public func add(field: Int, amount: Int) throws -> Void {
		if (amount == 0) {
			return;
		}

		var dateComponent = DateComponents()

		switch field {
			case SNCalendar.YEAR:
				dateComponent.year = amount;
				break;
			case SNCalendar.MONTH:
				dateComponent.month = amount;
				break;
			case SNCalendar.DAY_OF_MONTH:
				dateComponent.day = amount;
				break;

			default:
				throw NSError();
		}

		date = Calendar.current.date(byAdding: dateComponent, to: date)!;
	}
}
