//
//  SwiftNicetiesSet.swift
//  
//
//  Created by synapticloop on 24/10/2022.
//

import Foundation;

public extension Set where Element: Hashable {
	mutating func put(_ element: Element) -> Void {
		self.insert(element);
	}

}
