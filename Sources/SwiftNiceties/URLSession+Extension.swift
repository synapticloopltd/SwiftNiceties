//
// URLSession+Extension.swift
//
// Created by syanpticloop on 30/09/2023.
//
// (c) synapticloop 2023
//


import Foundation;

/**
 URLSession+Extension
 */

extension URLSession {

	/// Make a synchronous GET HTTP call - NOTE that this is a BLOCKING call so
	/// you should ensure that this is not done on the main thread
	///
	/// - Parameter url: The URL to retrieve the data from
	/// - Returns: The regular data, urlresponse, and error
	public func synchronousDataTask(with url: URL) -> (Data?, URLResponse?, Error?) {
		var data: Data?
		var response: URLResponse?
		var error: Error?

		let semaphore = DispatchSemaphore(value: 0)

		let dataTask = self.dataTask(with: url) {
			data = $0
			response = $1
			error = $2

			semaphore.signal()
		}
		dataTask.resume()

		_ = semaphore.wait(timeout: .distantFuture)

		return (data, response, error)
	}

	/// Make a synchronous GET HTTP call - NOTE that this is a BLOCKING call so
	/// you should ensure that this is not done on the main thread
	/// 
	/// - Parameter urlRequest: The URLRequest to retrieve
	/// - Returns: The regular data, urlresponse, and error
	public func synchronousDataTask(withURLRequest urlRequest: URLRequest) -> (Data?, URLResponse?, Error?) {
		var data: Data?
		var response: URLResponse?
		var error: Error?

		let semaphore = DispatchSemaphore(value: 0)

		let dataTask = self.dataTask(with: urlRequest) {
			data = $0
			response = $1
			error = $2

			semaphore.signal()
		}
		dataTask.resume()

		_ = semaphore.wait(timeout: .distantFuture)

		return (data, response, error)
	}
}
