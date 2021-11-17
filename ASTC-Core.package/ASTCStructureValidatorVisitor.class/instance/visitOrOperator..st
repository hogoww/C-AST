visiting
visitOrOperator: anOrOperator

	[ super visitOrOperator: anOrOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]