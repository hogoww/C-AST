visiting
visitPreprocessorIf: aPreprocessorIf

	[ super visitPreprocessorIf: aPreprocessorIf ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]