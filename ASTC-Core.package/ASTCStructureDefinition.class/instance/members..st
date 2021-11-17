accessing
members: someVariableDeclarations

	someVariableDeclarations do: [ :each | each parent: self ].
	members := someVariableDeclarations