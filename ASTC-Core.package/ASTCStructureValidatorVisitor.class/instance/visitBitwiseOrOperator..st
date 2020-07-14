visiting
visitBitwiseOrOperator: aBitwiseOrOperator
	[ super visitBitwiseOrOperator: aBitwiseOrOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]