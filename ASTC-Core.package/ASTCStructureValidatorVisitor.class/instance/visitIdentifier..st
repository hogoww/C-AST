visiting
visitIdentifier: anIdentifier
	[ super visitIdentifier: anIdentifier ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]