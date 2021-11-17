accessing
variableDeclarations: someVariableDeclarations

	someVariableDeclarations do: [ :each | each parent: self ].
	variableDeclarations := someVariableDeclarations