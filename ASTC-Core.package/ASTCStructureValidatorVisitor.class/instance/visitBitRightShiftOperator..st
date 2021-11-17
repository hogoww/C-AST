visiting
visitBitRightShiftOperator: aBitRightShiftOperator

	[ super visitBitRightShiftOperator: aBitRightShiftOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]