testing
= aPreprocessorInclude
	super = aPreprocessorInclude
		ifFalse: [ ^ false ].
	cFile = aPreprocessorInclude cFile
		ifFalse: [ ^ false ].
	^ true