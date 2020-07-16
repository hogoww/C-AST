visiting
visitStructureDefinition: aStructureDefinition
	aStructureDefinition members
		ifNotNil:
			[ :members | members do: [ :aMembers | aMembers acceptVisitor: self ] ].
	^ self visitDefinition: aStructureDefinition