visiting
visitBlock: aBlock

	aBlock statements ifNotNil: [ :statements | 
		statements do: [ :aStatements | aStatements acceptVisitor: self ] ].
	aBlock declarations ifNotNil: [ :declarations | 
		declarations do: [ :aDeclarations | 
			aDeclarations acceptVisitor: self ] ]