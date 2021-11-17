visiting
visitVariableDeclaration: aVariableDeclaration

	aVariableDeclaration id ifNotNil: [ :anId | anId acceptVisitor: self ].
	aVariableDeclaration type ifNotNil: [ :aType | 
		aType acceptVisitor: self ]