visiting
visitAndOperator: anAndOperator
	[ super visitAndOperator: anAndOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]