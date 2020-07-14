visiting
visitExpressionList: anExpressionList
	[ super visitExpressionList: anExpressionList ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]