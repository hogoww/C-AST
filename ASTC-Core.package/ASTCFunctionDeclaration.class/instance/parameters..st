accessing
parameters: someVariableDeclarations
	someVariableDeclarations do: [ :each | each parent: self ].
	parameters := someVariableDeclarations