visiting
visitDivisionOperator: aDivisionOperator

	[ super visitDivisionOperator: aDivisionOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]