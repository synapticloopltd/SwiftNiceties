//
//  SwiftNicetiesSet.swift
//  
//
//  Created by synapticloop on 24/10/2022.
//

import Foundation;

public extension Set where Element: Hashable {
	/**
	 Put an element into a set.  This is **DEPRECATED** and is really only here
	 as a reminder of the correct function call.

	 - Parameter element: THe element to be inserted into the set
	 - Returns: Void
	 */
	@available(*, deprecated, message: "This is just a reminder - you SHOULD really use the .insert() function call.")
	mutating func put(_ element: Element) -> Void {
		self.insert(element);
	}

}
