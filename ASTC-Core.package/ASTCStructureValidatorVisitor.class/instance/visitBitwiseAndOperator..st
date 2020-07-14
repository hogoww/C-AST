visiting
visitBitwiseAndOperator: aBitwiseAndOperator
	[ super visitBitwiseAndOperator: aBitwiseAndOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]