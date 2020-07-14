visiting
visitTernaryConditionalOperator: aTernaryConditionalOperator
	[ super visitTernaryConditionalOperator: aTernaryConditionalOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]