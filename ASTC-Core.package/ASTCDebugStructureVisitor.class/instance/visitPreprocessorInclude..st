visiting
visitPreprocessorInclude: aPreprocessorInclude
	super visitPreprocessorInclude: aPreprocessorInclude.
	aPreprocessorInclude cFiles
		ifNotNil: [ :aCFiles | self assert: aCFiles isCFile ]