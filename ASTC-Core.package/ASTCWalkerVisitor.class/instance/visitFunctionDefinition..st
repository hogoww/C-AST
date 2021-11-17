visiting
visitFunctionDefinition: aFunctionDefinition

	aFunctionDefinition declaration ifNotNil: [ :aDeclaration | 
		aDeclaration acceptVisitor: self ].
	aFunctionDefinition body ifNotNil: [ :aBody | 
		aBody acceptVisitor: self ]