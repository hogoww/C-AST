visiting
visitLesserOrEqualOperator: aLesserOrEqualOperator
	[ super visitLesserOrEqualOperator: aLesserOrEqualOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]