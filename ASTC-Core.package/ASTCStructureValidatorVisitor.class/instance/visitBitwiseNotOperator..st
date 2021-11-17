visiting
visitBitwiseNotOperator: aBitwiseNotOperator

	[ super visitBitwiseNotOperator: aBitwiseNotOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]