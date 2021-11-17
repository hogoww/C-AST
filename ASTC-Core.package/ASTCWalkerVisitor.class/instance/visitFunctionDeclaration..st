visiting
visitFunctionDeclaration: aFunctionDeclaration

	aFunctionDeclaration parameters ifNotNil: [ :parameters | 
		parameters do: [ :aParameters | aParameters acceptVisitor: self ] ].
	aFunctionDeclaration id ifNotNil: [ :anId | anId acceptVisitor: self ].
	aFunctionDeclaration type ifNotNil: [ :aType | 
		aType acceptVisitor: self ]