visiting
visitOperator: anOperator

	[ super visitOperator: anOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]