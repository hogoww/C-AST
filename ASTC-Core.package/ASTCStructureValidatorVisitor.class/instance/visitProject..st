visiting
visitProject: aProject
	[ super visitProject: aProject ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]