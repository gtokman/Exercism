//
//  hamming.swift
//  hamming
//
//  Created by g tokman on 7/9/16.
//  Copyright © 2016 garytokman. All rights reserved.
//

import Foundation

struct Hamming {
	static func compute(firstDNA: String, against secondDNA: String) -> Int? {
		// Only define for sequences of equal lengths
		guard firstDNA.characters.count == secondDNA.characters.count else { return nil }

		// Num of mutations
		var counter = 0

		// Check char values don't equal eachother // increment counter
		let firstStrand = Array(firstDNA.characters)
		let secondStrand = Array(secondDNA.characters)

		for char in 0 ..< firstStrand.count {
			if firstStrand[char] != secondStrand[char] {
				counter += 1
			}
		}

		return counter
	}
}

