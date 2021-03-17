visiting
visitCFile: aCFile
	super visitCFile: aCFile.
	aCFile header
		ifNotNil: [ :aHeader | self assert: aHeader isCompilationUnit ].
	aCFile implementation
		ifNotNil: [ :anImplementation | self assert: anImplementation isCompilationUnit ]