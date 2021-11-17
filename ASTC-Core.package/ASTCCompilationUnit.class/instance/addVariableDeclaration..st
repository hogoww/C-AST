accessing
addVariableDeclaration: aVariableDeclaration

	aVariableDeclaration parent: self.
	variableDeclarations add: aVariableDeclaration.
	^ true