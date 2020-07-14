accessing
statements: someStatements
	someStatements do: [ :each | each parent: self ].
	statements := someStatements