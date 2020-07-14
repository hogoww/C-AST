visiting
visitPreDecrementOperator: aPreDecrementOperator
	[ super visitPreDecrementOperator: aPreDecrementOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]