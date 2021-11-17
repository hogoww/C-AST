visiting
visitIf: anIf

	[ super visitIf: anIf ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]