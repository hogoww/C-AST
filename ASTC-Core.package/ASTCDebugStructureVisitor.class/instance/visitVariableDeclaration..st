visiting
visitVariableDeclaration: aVariableDeclaration

	super visitVariableDeclaration: aVariableDeclaration.
	aVariableDeclaration type ifNotNil: [ :aType | 
		self assert: aType isType ]