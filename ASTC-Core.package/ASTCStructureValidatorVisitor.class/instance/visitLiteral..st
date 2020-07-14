visiting
visitLiteral: aLiteral
	[ super visitLiteral: aLiteral ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]