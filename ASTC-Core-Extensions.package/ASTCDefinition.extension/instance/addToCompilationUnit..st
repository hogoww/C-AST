*ASTC-Core-Extensions
addToCompilationUnit: aCompilationUnit 
	aCompilationUnit addDefinition: self.
	declaration ifNotNil: [ aCompilationUnit addDeclaration: declaration ]