visiting
visitEqualityOperator: anEqualityOperator

	[ super visitEqualityOperator: anEqualityOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]