visiting
visitFunctionDefinition: aFunctionDefinition
	[ super visitFunctionDefinition: aFunctionDefinition ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]