visiting
visitSubtractionOperator: aSubtractionOperator
	[ super visitSubtractionOperator: aSubtractionOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]