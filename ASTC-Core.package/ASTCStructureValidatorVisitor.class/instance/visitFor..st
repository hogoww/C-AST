visiting
visitFor: aFor

	[ super visitFor: aFor ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]