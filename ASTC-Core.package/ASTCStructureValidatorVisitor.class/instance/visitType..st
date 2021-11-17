visiting
visitType: aType

	[ super visitType: aType ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]