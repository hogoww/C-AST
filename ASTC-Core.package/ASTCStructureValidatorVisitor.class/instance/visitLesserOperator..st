visiting
visitLesserOperator: aLesserOperator

	[ super visitLesserOperator: aLesserOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]