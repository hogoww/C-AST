visiting
visitStructureDefinition: aStructureDefinition
	super visitStructureDefinition: aStructureDefinition.
	aStructureDefinition members
		ifNotNil: [ :members | 
			members
				do: [ :aMembers | self assert: aMembers isVariableDeclaration ] ]