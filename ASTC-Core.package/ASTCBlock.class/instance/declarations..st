accessing
declarations: someDeclarationStatements

	someDeclarationStatements do: [ :each | each parent: self ].
	declarations := someDeclarationStatements