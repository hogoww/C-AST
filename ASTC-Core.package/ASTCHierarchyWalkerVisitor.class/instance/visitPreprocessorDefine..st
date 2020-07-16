visiting
visitPreprocessorDefine: aPreprocessorDefine
	aPreprocessorDefine name
		ifNotNil: [ :aName | aName acceptVisitor: self ].
	aPreprocessorDefine value
		ifNotNil: [ :aValue | aValue acceptVisitor: self ].
	^ self visitNode: aPreprocessorDefine