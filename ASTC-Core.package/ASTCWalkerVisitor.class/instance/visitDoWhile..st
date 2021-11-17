visiting
visitDoWhile: aDoWhile

	aDoWhile condition ifNotNil: [ :aCondition | 
		aCondition acceptVisitor: self ].
	aDoWhile body ifNotNil: [ :aBody | aBody acceptVisitor: self ]