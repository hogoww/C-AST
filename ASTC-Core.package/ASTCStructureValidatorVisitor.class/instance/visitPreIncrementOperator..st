visiting
visitPreIncrementOperator: aPreIncrementOperator

	[ super visitPreIncrementOperator: aPreIncrementOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]