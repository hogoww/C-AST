comparing
= aStructureDefinition

	super = aStructureDefinition ifFalse: [ ^ false ].
	members = aStructureDefinition members ifFalse: [ ^ false ].
	^ true