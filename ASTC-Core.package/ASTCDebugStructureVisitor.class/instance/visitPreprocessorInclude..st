visiting
visitPreprocessorInclude: aPreprocessorInclude
	super visitPreprocessorInclude: aPreprocessorInclude.
	aPreprocessorInclude cFiles
		ifNotNil:
			[ :cFiles | cFiles do: [ :aCFiles | self assert: aCFiles isCFile ] ]