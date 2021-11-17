visiting
visitWhile: aWhile

	aWhile condition ifNotNil: [ :aCondition | 
		aCondition acceptVisitor: self ].
	aWhile body ifNotNil: [ :aBody | aBody acceptVisitor: self ]