//
//  wordcount.swift
//  wordcount
//
//  Created by g tokman on 7/10/16.
//  Copyright © 2016 garytokman. All rights reserved.
//

import Foundation

struct WordCount {
	let words: String

	func count() -> [String: Int] {
		// Convert word into array // remove punc / symbols
		let wordLowerCase = words.lowercaseString
		let removePunc = wordLowerCase.componentsSeparatedByCharactersInSet(.punctuationCharacterSet())
		let stringOfWords = removePunc.joinWithSeparator(" ")
		let removeSymbols = stringOfWords.componentsSeparatedByCharactersInSet(.symbolCharacterSet()).joinWithSeparator(" ").componentsSeparatedByString(" ")
		let filteredWords = removeSymbols.filter { !$0.isEmpty }

		// Store instance of earch word
		var dict = [String: Int]()

		// Loop over array and append to dict
		for word in filteredWords {
			if !dict.keys.contains(word) {
				dict[word] = 1
			} else {
				dict[word]! += 1
			}
		}

		return dict
	}
}