//
// Math.swift
//
//
// Created by syanpticloop on 09/10/2023.
//
// (c) synapticloop 2023
//


import Foundation;

///
///
///
public class Math {
	let PI: Double = Double.pi;
	let E: Double = 2.718281828459045;

	@inlinable public static func min(_ a: Int, _ b: Int) -> Int {
		return(a < b ? a : b);
	}

	@inlinable public static func min(_ a: Double, _ b: Double) -> Double {
		return(a < b ? a : b);
	}

	@inlinable public static func max(_ a: Int, _ b: Int) -> Int {
		return(a > b ? a : b);
	}

	@inlinable public static func max(_ a: Double, _ b: Double) -> Double {
		return(a > b ? a : b);
	}

}
