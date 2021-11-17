visiting
visitFunctionDeclaration: aFunctionDeclaration

	super visitFunctionDeclaration: aFunctionDeclaration.
	aFunctionDeclaration parameters ifNotNil: [ :parameters | 
		parameters do: [ :aParameters | 
			self assert: aParameters isVariableDeclaration ] ].
	aFunctionDeclaration type ifNotNil: [ :aType | 
		self assert: aType isType ]