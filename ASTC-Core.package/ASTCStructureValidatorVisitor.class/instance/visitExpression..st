visiting
visitExpression: anExpression

	[ super visitExpression: anExpression ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]