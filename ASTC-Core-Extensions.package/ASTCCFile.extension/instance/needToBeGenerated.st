*ASTC-Core-Extensions
needToBeGenerated
	isStandard ifTrue: [ ^ false ].
	libraryName ifNotNil: [ ^ false ].
	^ implementation isNotNil