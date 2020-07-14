visiting
visitStatement: aStatement
	[ super visitStatement: aStatement ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]