comparing
hash

	| hash |
	hash := super hash.
	hash := hash + rawDeclaration hash.
	hash := hash + varName hash.
	^ hash