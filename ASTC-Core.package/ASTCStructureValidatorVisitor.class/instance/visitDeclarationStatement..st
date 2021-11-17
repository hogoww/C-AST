visiting
visitDeclarationStatement: aDeclarationStatement

	[ super visitDeclarationStatement: aDeclarationStatement ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]