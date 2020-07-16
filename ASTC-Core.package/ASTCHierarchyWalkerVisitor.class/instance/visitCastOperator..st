visiting
visitCastOperator: aCastOperator
	aCastOperator type ifNotNil: [ :aType | aType acceptVisitor: self ].
	^ self visitUnaryOperator: aCastOperator