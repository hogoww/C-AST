visiting
visitNode: aNode

	[ super visitNode: aNode ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]