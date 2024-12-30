//
// System.swift
// SwiftNiceties
//
// Created by syanpticloop on 31/12/2024.
//
// (c) synapticloop 2024
//


import Foundation;

/**
 System 
 */ 

public class System {
	/// Get the current time in milliseconds from the epoch
	///
	/// - Returns: The number of milliseconds since the eopch
	public static func currentTimeMillis() -> Int64 {
		return(Int64((Date().timeIntervalSince1970 * 1000.0).rounded()))
	}
}
