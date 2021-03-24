*ASTC-Core-Extensions
generateOnDiskPath: aPath 

	FAFilePrinter new
		directory: aPath;
		fileName: self implementationFileName;
		printStringInFile: implementation prettyPrint.

	header ifNil: [ ^ self ].
	FAFilePrinter new
		directory: aPath;
		fileName: self headerFileName;
		printStringInFile: header prettyPrint.