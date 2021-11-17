visiting
visitRawDeclaration: aRawDeclaration

	aRawDeclaration declaration ifNotNil: [ :aDeclaration | 
		aDeclaration acceptVisitor: self ]