visiting
visitRawCCode: aRawCCode

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aRawCCode';
		space.
	stream print: aRawCCode cCode.
	currentDepth := currentDepth + 1.
	super visitRawCCode: aRawCCode.
	currentDepth := currentDepth - 1.
	stream << ')'