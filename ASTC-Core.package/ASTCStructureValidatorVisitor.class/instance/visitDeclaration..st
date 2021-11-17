visiting
visitDeclaration: aDeclaration

	[ super visitDeclaration: aDeclaration ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]