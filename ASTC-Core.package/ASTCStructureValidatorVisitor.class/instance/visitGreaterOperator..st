visiting
visitGreaterOperator: aGreaterOperator

	[ super visitGreaterOperator: aGreaterOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]