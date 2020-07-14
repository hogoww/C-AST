testing
= aPreprocessorInclude
	super = aPreprocessorInclude
		ifFalse: [ ^ false ].
	name = aPreprocessorInclude name
		ifFalse: [ ^ false ].
	^ true