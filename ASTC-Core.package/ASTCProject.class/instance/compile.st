compilation
compile
	| mainFunctionFile makefile |
	mainFunctionFile := cFiles 
		detect: [ :aCFile | aCFile hasMainFunction ] 
		ifNone: [ self error: 'Currently require to have a main function to be able to compile !' ].
	mainFunctionFile.	
	makefile := FAMakefile new
		tests: { mainFunctionFile };
		supportFiles: self supportFiles;
		addTestRules.
	self halt.