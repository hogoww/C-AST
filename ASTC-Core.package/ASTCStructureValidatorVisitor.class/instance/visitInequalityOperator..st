visiting
visitInequalityOperator: anInequalityOperator

	[ super visitInequalityOperator: anInequalityOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]