definition
defineOperatorsHierarchy
	"Define operators in a different function, to limit the noise"
	"priorities come from the ranking from the cppreference website.
	Second part of the comment refers the associativity.
	https://en.cppreference.com/w/c/language/operator_precedence"
	unaryOperator --|> operator.
	binaryOperator --|> operator.
	
	"priority 1, #left"
	indexerOperator --|> binaryOperator. " aVar[anIndex] "
	structAccessPointerOperator --|> binaryOperator. " aVar -> aField "
	structAccessStaticOperator --|> binaryOperator. " aVar . aField "
	
	"priority 2 #right"
	preIncrementOperator --|> unaryOperator." ++i "
	preDecrementOperator --|> unaryOperator. " --i "
	logicalNotOperator --|> unaryOperator." ! b "
	addressOfOperator --|> unaryOperator. " & a "
	castOperator --|> unaryOperator. " (int) a "
	negationOperator --|> unaryOperator. " - a "
	bitwiseNotOperator --|> unaryOperator. " ~ a "
	
	"priority 3, #left"
	multiplicationOperator --|> binaryOperator." a * b "
	divisionOperator --|> binaryOperator." a / b "
	moduloOperator --|> binaryOperator." a % b "
	
	"priority 4, #left"
	subtractionOperator --|> binaryOperator." a - b "
	additionOperator --|> binaryOperator." a + b "
	
	"priority 5, #left"
	bitLeftShiftOperator --|> binaryOperator.
	bitRightShiftOperator --|> binaryOperator.
	
	"priority 6, #left"
	greaterOperator --|> binaryOperator." a > b "
	greaterOrEqualOperator --|> binaryOperator." a >= b "
	lesserOperator --|> binaryOperator." a < b "
	lesserOrEqualOperator --|> binaryOperator." a <= b "
	
	"priority 7, #left"
	equalityOperator --|> binaryOperator." a == b "
	inequalityOperator --|> binaryOperator." a != b "
	
	"priority 8, #left"
	bitwiseAndOperator --|> binaryOperator. " a & b "
	
	"priority 9, #left"
	bitwiseXorOperator --|> binaryOperator. " a ^ b "
	
	"priority 10, #left"
	bitwiseOrOperator --|> binaryOperator. " a | b "
	
	"priority 11, #left"
	andOperator --|> binaryOperator. " a && b "
	"priority 12, #left"
	orOperator --|> binaryOperator. " a || b "
	
	"priority 13, #right"
	ternaryConditionalOperator --|> operator. " a ? b : c "
	
	"priority 14, #right"
	assignementOperator --|> binaryOperator." a = b "
	assignmentAdditionOperator --|> binaryOperator." a += b"
	