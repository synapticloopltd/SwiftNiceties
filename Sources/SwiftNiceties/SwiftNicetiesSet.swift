//
//  SwiftNicetiesSet.swift
//  
//
//  Created by synapticloop on 24/10/2022.
//

import Foundation;

extension Set where Element: Hashable {
	@available(*, deprecated, message: "This is just a reminder - you shuld really use the .insert() function call.")
	mutating func put(_ element: Element) -> Void {
		self.insert(element);
	}

}
