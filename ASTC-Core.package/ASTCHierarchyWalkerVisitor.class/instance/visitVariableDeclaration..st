visiting
visitVariableDeclaration: aVariableDeclaration
	aVariableDeclaration type
		ifNotNil: [ :aType | aType acceptVisitor: self ].
	^ self visitDeclaration: aVariableDeclaration