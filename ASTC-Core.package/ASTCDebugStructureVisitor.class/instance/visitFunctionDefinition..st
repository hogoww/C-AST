visiting
visitFunctionDefinition: aFunctionDefinition

	super visitFunctionDefinition: aFunctionDefinition.
	aFunctionDefinition body ifNotNil: [ :aBody | 
		self assert: aBody isBlock ]