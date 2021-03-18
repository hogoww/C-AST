visiting
visitPreprocessorInclude: aPreprocessorInclude
	aPreprocessorInclude cFiles
		ifNotNil: [ :aCFiles | aCFiles acceptVisitor: self ]