visiting
visitBitLeftShiftOperator: aBitLeftShiftOperator
	[ super visitBitLeftShiftOperator: aBitLeftShiftOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]