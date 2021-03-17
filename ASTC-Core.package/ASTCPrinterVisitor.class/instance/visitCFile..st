visiting
visitCFile: aCFile
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aCFile';
		space.
	stream print: aCFile fileName.
	stream print: aCFile isHeader.
	currentDepth := currentDepth + 1.
	super visitCFile: aCFile.
	currentDepth := currentDepth - 1.
	stream << ')'