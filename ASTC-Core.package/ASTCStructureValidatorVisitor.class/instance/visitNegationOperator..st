visiting
visitNegationOperator: aNegationOperator
	[ super visitNegationOperator: aNegationOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]