//
// SimpleDateFormat.swift
//
//
// Created by syanpticloop on 09/10/2023.
//
// (c) synapticloop 2023
//


import Foundation;

/**
 SimpleDateFormat
 */

public class SimpleDateFormat {
	private var dateFormatter: DateFormatter;
	
	/// Init a SimpleDateFormat with a specified date format String
	/// 
	/// The following format is supported:
	///
	/// | Letter | Date or Time Component | Presentation | Examples |
	/// | ------ | ---------------------- | ------------ | -------- |
	/// | `G` | Era designator | Text | AD |
	/// | `y` | Year | Year | 1996; 96 |
	/// | `Y` | Week year | Year | 2009; 09 |
	/// | `M` | Month in year (context sensitive) | Month | July; Jul; 07 |
	/// | `L` | Month in year (standalone form) | Month | July; Jul; 07 |
	/// | `w` | Week in year | Number | 27 |
	/// | `W` | Week in month | Number | 2 |
	/// | `D` | Day in year | Number | 189 |
	/// | `d` | Day in month | Number | 10 |
	/// | `F` | Day of week in month | Number | 2 |
	/// | `E` | Day name in week | Text | Tuesday; Tue |
	/// | `u` | Day number of week (1 = Monday, ..., 7 = Sunday) | Number | 1 |
	/// | `a` | Am/pm marker | Text | PM |
	/// | `H` | Hour in day (0-23) | Number | 0 |
	/// | `k` | Hour in day (1-24) | Number | 24 |
	/// | `K` | Hour in am/pm (0-11) | Number | 0 |
	/// | `h` | Hour in am/pm (1-12) | Number | 12 |
	/// | `m` | Minute in hour | Number | 30 |
	/// | `s` | Second in minute | Number | 55 |
	/// | `S` | Millisecond | Number | 978 |
	/// | `z` | Time zone | General time zone | Pacific Standard Time; PST; GMT-08:00 |
	/// | `Z` | Time zone | RFC 822 time zone | -0800 |
	/// | `X` | Time zone | ISO 8601 time zone | -08; -0800; -08:00 |
	///
	/// - Parameter pattern: The date format pattern
	public init(_ pattern: String) {
		self.dateFormatter = DateFormatter(pattern);
	}


	/// Format the passed in date with the format required
	///
	/// - Parameter date: The date to be formatted
	/// 
	/// - Returns: The date, formatted with the specific format
	public func format(_ date: Date) -> String {
		return(dateFormatter.string(from: date));
	}
}
