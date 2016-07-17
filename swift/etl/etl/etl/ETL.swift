//
//  ETL.swift
//  etl
//
//  Created by g tokman on 7/16/16.
//  Copyright © 2016 garytokman. All rights reserved.
//

import Foundation

typealias newData = [String: Int]
typealias oldData = [Int: [String]]

struct ETL {
	static func transform(data: oldData) -> newData {
		var newDict = [String: Int]()
		// Transform Array Dict of Type Int for Key and Array of String for the value

		data.forEach { (num, stringArray) in
			for stringValue in stringArray {
				newDict[stringValue.lowercaseString] = num
			}
		}

		// Retrun a Dict of Type String

		return newDict
	}
}
