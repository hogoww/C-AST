visiting
visitRawCCode: aRawCCode

	[ super visitRawCCode: aRawCCode ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]