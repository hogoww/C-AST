visiting
visitCFile: aCFile

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aCFile';
		space.
	stream print: aCFile fileName.
	stream print: aCFile libraryName.
	stream print: aCFile isStandard.
	currentDepth := currentDepth + 1.
	super visitCFile: aCFile.
	currentDepth := currentDepth - 1.
	stream << ')'