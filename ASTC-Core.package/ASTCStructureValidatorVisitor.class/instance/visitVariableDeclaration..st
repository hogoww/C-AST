visiting
visitVariableDeclaration: aVariableDeclaration
	[ super visitVariableDeclaration: aVariableDeclaration ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]