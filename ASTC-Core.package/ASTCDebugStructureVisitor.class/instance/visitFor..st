visiting
visitFor: aFor

	super visitFor: aFor.
	aFor iteratorDefinition ifNotNil: [ :anIteratorDefinition | 
		self assert: anIteratorDefinition isNode ].
	aFor iteratorModification ifNotNil: [ :anIteratorModification | 
		self assert: anIteratorModification isExpression ]