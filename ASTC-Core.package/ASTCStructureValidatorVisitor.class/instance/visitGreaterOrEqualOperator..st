visiting
visitGreaterOrEqualOperator: aGreaterOrEqualOperator
	[ super visitGreaterOrEqualOperator: aGreaterOrEqualOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]