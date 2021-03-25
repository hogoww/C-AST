*ASTC-Core-Extensions
generateMakefile

	| makefile |
		
	makefile := FAMakefile new
		setSupportFiles: self gatherSupportFiles;
		mainFiles: self gatherMainFilesNames;
		addTestRules.

	FAFilePrinter new
		directory: self path;
		fileName: 'Makefile';
		printStringInFile: makefile printString