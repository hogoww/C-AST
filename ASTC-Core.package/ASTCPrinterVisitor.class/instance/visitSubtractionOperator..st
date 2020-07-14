visiting
visitSubtractionOperator: aSubtractionOperator
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aSubtractionOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitSubtractionOperator: aSubtractionOperator.
	currentDepth := currentDepth - 1.
	stream << ')'