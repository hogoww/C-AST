*ASTC-Core-Extensions
generateMakefiles

	| makefile |
	cFiles 
		select: [ :aCFile | aCFile hasMainFunction ]
		thenCollect: [ :aCFile |
			makefile := FAMakefile new
				setSupportFiles: self gatherSupportFiles;
				mainFiles: { aCFile fileName };
				addTestRules.
				FAFilePrinter new 
					directory: self path;
					fileName: aCFile fileName , '.makefile';
					printStringInFile: makefile printString
			].

