visiting
visitEmptyStatement: anEmptyStatement

	[ super visitEmptyStatement: anEmptyStatement ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]