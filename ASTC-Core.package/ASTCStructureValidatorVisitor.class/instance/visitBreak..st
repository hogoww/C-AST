visiting
visitBreak: aBreak
	[ super visitBreak: aBreak ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]