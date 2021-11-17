visiting
visitAddressOfOperator: anAddressOfOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anAddressOfOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitAddressOfOperator: anAddressOfOperator.
	currentDepth := currentDepth - 1.
	stream << ')'