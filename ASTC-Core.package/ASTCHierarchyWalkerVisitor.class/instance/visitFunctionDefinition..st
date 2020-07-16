visiting
visitFunctionDefinition: aFunctionDefinition
	aFunctionDefinition body
		ifNotNil: [ :aBody | aBody acceptVisitor: self ].
	^ self visitDefinition: aFunctionDefinition