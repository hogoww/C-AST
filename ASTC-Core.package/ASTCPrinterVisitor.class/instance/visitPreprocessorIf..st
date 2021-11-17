visiting
visitPreprocessorIf: aPreprocessorIf

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aPreprocessorIf';
		space.
	currentDepth := currentDepth + 1.
	super visitPreprocessorIf: aPreprocessorIf.
	currentDepth := currentDepth - 1.
	stream << ')'