visiting
visitDivisionOperator: aDivisionOperator
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aDivisionOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitDivisionOperator: aDivisionOperator.
	currentDepth := currentDepth - 1.
	stream << ')'