visiting
visitSwitch: aSwitch

	[ super visitSwitch: aSwitch ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]