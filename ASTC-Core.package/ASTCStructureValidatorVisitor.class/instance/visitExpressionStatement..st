visiting
visitExpressionStatement: anExpressionStatement
	[ super visitExpressionStatement: anExpressionStatement ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]