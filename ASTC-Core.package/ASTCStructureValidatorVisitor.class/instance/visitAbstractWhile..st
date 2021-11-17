visiting
visitAbstractWhile: anAbstractWhile

	[ super visitAbstractWhile: anAbstractWhile ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]