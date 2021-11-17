visiting
visitIndexerOperator: anIndexerOperator

	[ super visitIndexerOperator: anIndexerOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]