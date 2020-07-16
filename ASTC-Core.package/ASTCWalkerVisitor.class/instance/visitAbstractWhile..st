visiting
visitAbstractWhile: anAbstractWhile
	anAbstractWhile condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	anAbstractWhile body ifNotNil: [ :aBody | aBody acceptVisitor: self ]