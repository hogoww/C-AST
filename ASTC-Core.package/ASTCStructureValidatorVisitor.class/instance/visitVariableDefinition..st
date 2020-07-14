visiting
visitVariableDefinition: aVariableDefinition
	[ super visitVariableDefinition: aVariableDefinition ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]