visiting
visitCastOperator: aCastOperator
	super visitCastOperator: aCastOperator.
	aCastOperator type ifNotNil: [ :aType | self assert: aType isType ]