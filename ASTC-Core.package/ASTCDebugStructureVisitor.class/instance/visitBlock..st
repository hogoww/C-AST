visiting
visitBlock: aBlock
	super visitBlock: aBlock.
	aBlock statements
		ifNotNil:
			[ :statements | statements do: [ :aStatements | self assert: aStatements isStatement ] ].
	aBlock declarations
		ifNotNil: [ :declarations | 
			declarations
				do: [ :aDeclarations | self assert: aDeclarations isDeclarationStatement ] ]