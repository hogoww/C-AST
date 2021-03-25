*ASTC-Core-Extensions
= aPreprocessorInclude
	super = aPreprocessorInclude
		ifFalse: [ ^ false ].
	"remove recursive call"
	"cFile = aPreprocessorInclude cFile
		ifFalse: [ ^ false ]."
	^ true