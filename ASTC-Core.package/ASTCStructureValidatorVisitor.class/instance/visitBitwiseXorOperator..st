visiting
visitBitwiseXorOperator: aBitwiseXorOperator
	[ super visitBitwiseXorOperator: aBitwiseXorOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]