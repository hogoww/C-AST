visiting
visitMultiplicationOperator: aMultiplicationOperator
	[ super visitMultiplicationOperator: aMultiplicationOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]