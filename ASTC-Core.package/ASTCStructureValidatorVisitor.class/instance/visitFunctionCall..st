visiting
visitFunctionCall: aFunctionCall
	[ super visitFunctionCall: aFunctionCall ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]