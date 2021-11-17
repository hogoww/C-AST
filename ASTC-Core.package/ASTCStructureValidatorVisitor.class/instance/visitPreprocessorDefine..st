visiting
visitPreprocessorDefine: aPreprocessorDefine

	[ super visitPreprocessorDefine: aPreprocessorDefine ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]