testing
= aPreprocessorIf
	super = aPreprocessorIf
		ifFalse: [ ^ false ].
	condition = aPreprocessorIf condition
		ifFalse: [ ^ false ].
	then = aPreprocessorIf then
		ifFalse: [ ^ false ].
	else = aPreprocessorIf else
		ifFalse: [ ^ false ].
	^ true