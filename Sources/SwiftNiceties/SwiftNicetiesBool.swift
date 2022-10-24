//
//  SwiftNicetiesBool.swift
//  
//
//  Created by synapticloop on 25/10/2022.
//

import Foundation;

public extension Bool {

	fileprivate static let TRUE_VALUES: Set<String> = [
		"true",
		"1"
	]

	/** Creates a new Boolean value from the given string.
	 *
	 *  If the `description` value is any string other than `"true"` or `"0"` (zero)
	 * the the value is set to false. This initializer is NOT case sensitive.
	 *
	 * - Parameter description: A string representation of the Boolean value.
	 */
	init(fromString: String) {
		if Bool.TRUE_VALUES.contains(fromString.lowercased()) {
			self = true;
		} else {
			self = false;
		}
	}
}
