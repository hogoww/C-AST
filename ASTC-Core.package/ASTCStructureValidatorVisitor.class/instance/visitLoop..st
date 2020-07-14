visiting
visitLoop: aLoop
	[ super visitLoop: aLoop ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]