visiting
visitBinaryOperator: aBinaryOperator

	[ super visitBinaryOperator: aBinaryOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]