*ASTC-Core-Extensions
generateHeaderFromImplementation
	header := implementation removeHeaderAndPutItInNewCompilationUnit.
	implementation add: (ASTCPreprocessorInclude new cFile: self ; yourself).