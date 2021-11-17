visiting
visitStructAccessPointerOperator: aStructAccessPointerOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aStructAccessPointerOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitStructAccessPointerOperator: aStructAccessPointerOperator.
	currentDepth := currentDepth - 1.
	stream << ')'