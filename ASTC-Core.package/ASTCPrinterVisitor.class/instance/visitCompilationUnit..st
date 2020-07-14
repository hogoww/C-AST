visiting
visitCompilationUnit: aCompilationUnit
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aCompilationUnit';
		space.
	currentDepth := currentDepth + 1.
	super visitCompilationUnit: aCompilationUnit.
	currentDepth := currentDepth - 1.
	stream << ')'