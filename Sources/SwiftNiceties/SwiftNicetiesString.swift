//
//  SwiftNicetiesString.swift
//
//
//  Created by synapticloop on 13/10/2022.
//

import Foundation;
import CommonCrypto;

extension String {
	/**
	 Get a substring from the beginning index (inclusive) to the end index - 1 of
	 the string
	 
	 Examples:
	 
	 - "hamburger".substring(4, 8) returns "urge"
	 - "smiles".substring(1, 5) returns "mile"
	 
	 **WARNING** This method will throw a fatal error in the following
	 conditions:
	 
	 - the `beginIndex` parameter is less than zero '0'
	 - the `beginIndex` parameter is greater than the length of the string
	 - the `endIndex` parameter is less than zero '0'
	 - the `endIndex` parameter is greater than the length of the string

	 You will need to ensure that the string indexes are within bounds before
	 calling this method.
	 
	 - Parameters:
	     - beginIndex: the index to start from (starting at zero '0') inclusive
	     - endIndex: the ending index, exclusive.

	 - Returns: The substring from the beginning index to the end index of the string
	*/
	func substring(_ beginIndex: Int) -> String {
		return(substring(beginIndex, self.count));
	}
	
	/**
	 Get a substring from the beginning index (inclusive) to the end of the string
	 
	 Examples:
	 
	 - `"unhappy".substring(2)` returns `"happy"`
	 - `"Harbison".substring(3)` returns `"bison"`
	 - `"emptiness".substring(9)` returns `""` (an empty string)
	 
	 **WARNING** This method will throw a fatal error in the following
	 conditions:
	 
	 - the `beginIndex` parameter is less than zero '0'
	 - the `beginIndex` parameter is greater than the length of the string
	 
	 You will need to ensure that the string indexes are within bounds before
	 calling this method.
	 
	 - Parameters:
	 - beginIndex: the index to start from (starting at zero '0')
	 
	 - Returns: The substring from the beginning index to the end of the string
	 */
	func substring(_ beginIndex: Int, _ endIndex: Int) -> String {
		let start = index(startIndex, offsetBy: beginIndex);
		let end = index(startIndex, offsetBy: endIndex);
		return String(self[start..<end]);
	}
	
	func startsWith(_ str: String) -> Bool {
		return(starts(with: str));
	}
	
	func toCharArray() -> [Character] {
		return([Character](self));
	}
	
	func contains(_ str: String, options: String.CompareOptions = []) -> Bool {
		return(nil != indexOf(str, options: options));
	}
	
	func indexOf(_ str: String, options: String.CompareOptions = []) -> Int? {
		return(range(of: str, options: options)?.lowerBound.utf16Offset(in: self))
	}
	
	/**
	 Lowercase this String
	 
	  - Returns:
	 */
	public func toLowerCase() -> String {
		return(self.lowercased());
	}
	
	/**
	 Lowercase this string
	 
	  - Returns: The lower cased version of this string for the optional locale.
	 */
	public func toLowerCase(_ locale: Locale?) -> String {
		return(self.lowercased(with: locale));
	}
	
	/**
	 Trim whitespace characters from the beginning and end of a string
	 
	 - Returns: the string trimmed of whitespace and newlines
	 */
	public func trim() -> String {
		return(self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines))
	}

	/**
	 Generate a SHA256 hash for a String

	 - Returns: the SHA 256 hash for the String
	 */
	public func sha256() -> String {
		let data = Data(self.utf8)
		var hash = [UInt8](repeating: 0,  count: Int(CC_SHA256_DIGEST_LENGTH))
		data.withUnsafeBytes {
			_ = CC_SHA256($0.baseAddress, CC_LONG(data.count), &hash)
		}
		return hash.map { String(format: "%02x", $0) }.joined()
	}
}
