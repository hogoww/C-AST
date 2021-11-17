visiting
visitSwitchCase: aSwitchCase

	[ super visitSwitchCase: aSwitchCase ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]