definition
defineOperatorClasses
	"Define operators in a different function, to limit the noise"
	
	self flag:#format. "should have a synced format with defineOperators. Will do when they are all there."
	unaryOperator := builder newClassNamed: #UnaryOperator.
	binaryOperator := builder newClassNamed: #BinaryOperator.
	ternaryConditionalOperator := builder newClassNamed: #TernaryConditionalOperator.
	
	preIncrementOperator := builder newClassNamed: #PreIncrementOperator.
	preDecrementOperator := builder newClassNamed: #PreDecrementOperator.
	castOperator := builder newClassNamed: #CastOperator.
	logicalNotOperator := builder newClassNamed: #LogicalNotOperator.
	
	assignementOperator := builder newClassNamed: #AssignmentOperator.
	additionOperator := builder newClassNamed: #AdditionOperator.
	subtractionOperator := builder newClassNamed: #SubtractionOperator.
	multiplicationOperator := builder newClassNamed: #MultiplicationOperator.
	divisionOperator := builder newClassNamed: #DivisionOperator.
	indexerOperator := builder newClassNamed: #IndexerOperator.
	orOperator := builder newClassNamed: #OrOperator.
	andOperator := builder newClassNamed: #AndOperator.
	equalityOperator := builder newClassNamed: #EqualityOperator.
	inequalityOperator := builder newClassNamed: #InequalityOperator.
	greaterOperator := builder newClassNamed: #GreaterOperator.
	greaterOrEqualOperator := builder newClassNamed: #GreaterOrEqualOperator.
	lesserOperator := builder newClassNamed: #LesserOperator.
	lesserOrEqualOperator := builder newClassNamed: #LesserOrEqualOperator.
	structAccessPointerOperator := builder newClassNamed: #StructAccessPointerOperator.
	bitwiseAndOperator := builder newClassNamed: #BitwiseAndOperator.
	moduloOperator := builder newClassNamed: #ModuloOperator.
	structAccessStaticOperator := builder newClassNamed: #StructAccessStaticOperator.
	addressOfOperator := builder newClassNamed: #AddressOfOperator.
	bitLeftShiftOperator := builder newClassNamed: #BitLeftShiftOperator.
	bitRightShiftOperator := builder newClassNamed: #BitRightShiftOperator.
	assignmentAdditionOperator := builder newClassNamed: #AssignmentAdditionOperator.
	bitwiseXorOperator := builder newClassNamed: #BitwiseXorOperator.
	bitwiseOrOperator := builder newClassNamed: #BitwiseOrOperator.
	bitwiseNotOperator := builder newClassNamed: #BitwiseNotOperator.
	negationOperator := builder newClassNamed: #NegationOperator.
	