comparing
= aPreprocessorDefine
	super = aPreprocessorDefine
		ifFalse: [ ^ false ].
	name = aPreprocessorDefine name
		ifFalse: [ ^ false ].
	value = aPreprocessorDefine value
		ifFalse: [ ^ false ].
	^ true