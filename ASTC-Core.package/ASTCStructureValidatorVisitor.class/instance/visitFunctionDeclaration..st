visiting
visitFunctionDeclaration: aFunctionDeclaration
	[ super visitFunctionDeclaration: aFunctionDeclaration ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]