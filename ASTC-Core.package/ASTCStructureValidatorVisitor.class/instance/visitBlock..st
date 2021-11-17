visiting
visitBlock: aBlock

	[ super visitBlock: aBlock ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]