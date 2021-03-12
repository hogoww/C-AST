visiting
visitCompilationUnit: aCompilationUnit
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aCompilationUnit';
		space.
	stream print: aCompilationUnit fileName.
	stream print: aCompilationUnit isHeader.
	currentDepth := currentDepth + 1.
	super visitCompilationUnit: aCompilationUnit.
	currentDepth := currentDepth - 1.
	stream << ')'