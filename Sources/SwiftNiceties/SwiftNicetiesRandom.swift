//
//  File.swift
//  
//
//  Created by synapticloop on 21/10/2022.
//

import Foundation;

struct Random {
	/**
	 
	 - Returns: a random number between 0 (inclusive) and Int.max (exclusive)
	 */
	public static func nextInt() -> Int {
		return(nextInt(Int.max));
	}

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
