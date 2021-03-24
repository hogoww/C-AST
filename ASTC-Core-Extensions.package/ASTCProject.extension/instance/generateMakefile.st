*ASTC-Core-Extensions
generateMakefile

	| makefile |
		
	makefile := FAMakefile new
		supportFiles: self gatherSupportFilesName;
		mainFiles: self gatherMainFilesNames;
		addTestRules.

	FAFilePrinter new
		directory: self path;
		fileName: 'Makefile';
		printStringInFile: makefile printString