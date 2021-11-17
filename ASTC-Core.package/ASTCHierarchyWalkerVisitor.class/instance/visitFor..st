visiting
visitFor: aFor

	aFor iteratorDefinition ifNotNil: [ :anIteratorDefinition | 
		anIteratorDefinition acceptVisitor: self ].
	aFor iteratorModification ifNotNil: [ :anIteratorModification | 
		anIteratorModification acceptVisitor: self ].
	^ self visitLoop: aFor