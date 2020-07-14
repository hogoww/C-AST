testing
= aFor
	super = aFor
		ifFalse: [ ^ false ].
	iteratorDefinition = aFor iteratorDefinition
		ifFalse: [ ^ false ].
	iteratorModification = aFor iteratorModification
		ifFalse: [ ^ false ].
	^ true