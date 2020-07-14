visiting
visitCastOperator: aCastOperator
	[ super visitCastOperator: aCastOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]