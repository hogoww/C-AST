visiting
visitWhile: aWhile
	[ super visitWhile: aWhile ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]