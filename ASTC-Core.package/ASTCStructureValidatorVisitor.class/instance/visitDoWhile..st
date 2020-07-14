visiting
visitDoWhile: aDoWhile
	[ super visitDoWhile: aDoWhile ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]