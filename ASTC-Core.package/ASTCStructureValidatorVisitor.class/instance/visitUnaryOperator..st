visiting
visitUnaryOperator: anUnaryOperator

	[ super visitUnaryOperator: anUnaryOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]