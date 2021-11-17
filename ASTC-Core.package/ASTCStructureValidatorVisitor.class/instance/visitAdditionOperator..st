visiting
visitAdditionOperator: anAdditionOperator

	[ super visitAdditionOperator: anAdditionOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]