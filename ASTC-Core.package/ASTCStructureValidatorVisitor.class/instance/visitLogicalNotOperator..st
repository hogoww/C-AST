visiting
visitLogicalNotOperator: aLogicalNotOperator
	[ super visitLogicalNotOperator: aLogicalNotOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]