visiting
visitStructureDefinition: aStructureDefinition
	aStructureDefinition members
		ifNotNil:
			[ :members | members do: [ :aMembers | aMembers acceptVisitor: self ] ].
	aStructureDefinition declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ]