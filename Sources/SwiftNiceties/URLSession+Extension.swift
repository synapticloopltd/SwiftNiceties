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
	func synchronousDataTask(with url: URL) -> (Data?, URLResponse?, Error?) {
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

	func synchronousDataTask(withURLRequest urlRequest: URLRequest) -> (Data?, URLResponse?, Error?) {
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
