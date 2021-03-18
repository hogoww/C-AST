testing
= aPreprocessorInclude
	super = aPreprocessorInclude
		ifFalse: [ ^ false ].
	cFiles = aPreprocessorInclude cFiles
		ifFalse: [ ^ false ].
	^ true