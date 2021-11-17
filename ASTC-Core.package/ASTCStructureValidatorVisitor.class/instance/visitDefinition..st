visiting
visitDefinition: aDefinition

	[ super visitDefinition: aDefinition ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]