accessing
addFunctionDeclaration: aFunctionDeclaration

	aFunctionDeclaration parent: self.
	functionDeclarations add: aFunctionDeclaration.
	^ true