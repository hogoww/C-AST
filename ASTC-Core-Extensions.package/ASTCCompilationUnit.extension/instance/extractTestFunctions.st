*ASTC-Core-Extensions
extractTestFunctions
	| testsFunctions |
	testsFunctions := definitions select: [ :aFunction | aFunction isTest ].
	definitions removeAllSuchThat: [ :aFunction | aFunction isTest ].
	^ testsFunctions