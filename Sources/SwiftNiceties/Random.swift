//
//  Random.swift
//
//
//  Created by synapticloop on 21/10/2022.
//

import Foundation;

public struct Random {
	/**
	 Generate a random number between 0 (inclusive) and `Int.max` (exclusive)

	 - Returns: a random number between 0 (inclusive) and Int.max (exclusive)
	 */
	public static func nextInt() -> Int {
		return(nextInt(Int.max));
	}

	/**
	 Generate a random number between 0 (inclusive) and `Int.max` (exclusive)

	 - Parameter bound: the upper bound of the integer

	 - Returns: a random number between 0 (inclusive) and bound (exclusive)
	 */
	public static func nextInt(_ bound: Int) -> Int {
		return(Int.random(in: 0..<bound));
	}
	
	public static func nextBool() -> Bool {
		return(Bool.random());
	}
	
	public static func nextDouble(_ bound: Double) -> Double {
		return(Double.random(in: 0..<bound));
	}
	
	public static func nextDouble() -> Double {
		return(nextDouble(Double.greatestFiniteMagnitude));
	}
}
