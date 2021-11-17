visiting
visitStructureDefinition: aStructureDefinition

	[ super visitStructureDefinition: aStructureDefinition ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]