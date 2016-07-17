//
//  leap.swift
//  leap
//
//  Created by g tokman on 7/8/16.
//  Copyright © 2016 garytokman. All rights reserved.
//

import Foundation

struct Year {
	var calendarYear: Int

	var isLeapYear: Bool {
		// Evenly divisible by 4

		// Except on a year that is evenly divisible by 100

		// Unles the year is also evenly divisible by 400
		guard calendarYear % 4 == 0 && calendarYear % 100 != 0 || calendarYear % 400 == 0 else { return false }

		return true
	}
}

