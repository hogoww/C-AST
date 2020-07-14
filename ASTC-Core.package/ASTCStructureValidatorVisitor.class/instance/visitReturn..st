visiting
visitReturn: aReturn
	[ super visitReturn: aReturn ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]