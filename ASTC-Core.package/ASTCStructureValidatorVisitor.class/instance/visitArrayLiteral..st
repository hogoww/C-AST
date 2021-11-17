visiting
visitArrayLiteral: anArrayLiteral

	[ super visitArrayLiteral: anArrayLiteral ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]