visiting
visitPreprocessorInclude: aPreprocessorInclude
	aPreprocessorInclude cFile
		ifNotNil: [ :aCFile | aCFile acceptVisitor: self ]