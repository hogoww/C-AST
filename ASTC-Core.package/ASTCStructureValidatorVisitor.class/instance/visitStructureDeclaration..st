visiting
visitStructureDeclaration: aStructureDeclaration

	[ super visitStructureDeclaration: aStructureDeclaration ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]