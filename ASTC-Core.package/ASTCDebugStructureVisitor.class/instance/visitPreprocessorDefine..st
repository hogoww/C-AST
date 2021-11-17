visiting
visitPreprocessorDefine: aPreprocessorDefine

	super visitPreprocessorDefine: aPreprocessorDefine.
	aPreprocessorDefine name ifNotNil: [ :aName | 
		self assert: aName isIdentifier ].
	aPreprocessorDefine value ifNotNil: [ :aValue | 
		self assert: aValue isLiteral ]