visiting
visitPreprocessorInclude: aPreprocessorInclude
	super visitPreprocessorInclude: aPreprocessorInclude.
	aPreprocessorInclude cFile
		ifNotNil: [ :aCFile | self assert: aCFile isCFile ]