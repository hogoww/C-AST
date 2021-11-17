comparing
hash

	| hash |
	hash := super hash.
	hash := hash + leftOperand hash.
	hash := hash + rightOperand hash.
	^ hash