visiting
visitPreprocessorInclude: aPreprocessorInclude
	[ super visitPreprocessorInclude: aPreprocessorInclude ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]