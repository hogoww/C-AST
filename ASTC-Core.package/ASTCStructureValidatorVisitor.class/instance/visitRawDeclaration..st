visiting
visitRawDeclaration: aRawDeclaration
	[ super visitRawDeclaration: aRawDeclaration ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]