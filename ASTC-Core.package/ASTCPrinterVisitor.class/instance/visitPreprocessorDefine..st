visiting
visitPreprocessorDefine: aPreprocessorDefine
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aPreprocessorDefine';
		space.
	currentDepth := currentDepth + 1.
	super visitPreprocessorDefine: aPreprocessorDefine.
	currentDepth := currentDepth - 1.
	stream << ')'