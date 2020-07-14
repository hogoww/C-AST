accessing
addCompilationUnit: aCompilationUnit
	aCompilationUnit parent: self.
	compilationUnits add: aCompilationUnit.
	^ true