visiting
visitFor: aFor

	aFor condition ifNotNil: [ :aCondition | 
		aCondition acceptVisitor: self ].
	aFor body ifNotNil: [ :aBody | aBody acceptVisitor: self ].
	aFor iteratorDefinition ifNotNil: [ :anIteratorDefinition | 
		anIteratorDefinition acceptVisitor: self ].
	aFor iteratorModification ifNotNil: [ :anIteratorModification | 
		anIteratorModification acceptVisitor: self ]