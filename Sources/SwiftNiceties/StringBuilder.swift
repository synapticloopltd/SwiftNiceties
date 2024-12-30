//
// StringBuilder.swift
// 
//
// Created by syanpticloop on 09/10/2023.
//
// (c) synapticloop 2023
//


import Foundation;

/**
 StringBuilder 
 */ 

public class StringBuilder {
	private var value: [Character]

	init() {
		value = [];
	}

	/// Constructs a string builder initialized to the contents of the specified
	/// string. The initial capacity of the string builder the length of the string
	/// argument.
	///
	/// - Parameter string: the initial contents of the buffer
	init(_ string: String) {
		value = Array(string);
	}

	init(_ capacity: Int) {
		value = []
		value.reserveCapacity(capacity);
	}

	func append(_ string: String) {
		value.append(contentsOf: string);
	}

	func append(_ character: Character) {
		value.append(contentsOf: String(character));
	}

	
	func toString() -> String {
		return String(value);
	}

	func capacity() -> Int {
		value.capacity
	}

	func ensureCapacity(min: Int) {
		value.reserveCapacity(min)
	}

	func insert(_ offset: Int, _ string: String) {
		value.insert(contentsOf: string, at: offset)
	}

	func replace(_ start: Int, _ end: Int, _ s: String) {
		value.replaceSubrange(start...end, with: s)
	}

	func delete(_ start: Int, _ end: Int) {
		value.removeSubrange(start...end)
	}

	func reverse() {
		value = value.reversed()
	}

	func charAt(index: Int) -> Character {
		value[index]
	}

	func length() -> Int {
		value.count
	}

	func substring(start: Int) -> String? {
		guard start<value.endIndex else { return nil }
		return String(value[start..<value.endIndex])
	}

	func substring(start: Int, end: Int) -> String? {
		guard start<end else { return nil }
		return String(value[start..<end])
	}

	func indexOf(str: String) -> Int? {
		value.firstIndex(of: Character(str)) ?? nil
	}

	func lastIndexOf(str: String) -> Int? {
		value.lastIndex(of: Character(str))
	}

	func trimToSize() {
		value.reserveCapacity(value.count)
	}
}
