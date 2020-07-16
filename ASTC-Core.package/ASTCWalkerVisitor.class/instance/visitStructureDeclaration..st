visiting
visitStructureDeclaration: aStructureDeclaration
	aStructureDeclaration id
		ifNotNil: [ :anId | anId acceptVisitor: self ]