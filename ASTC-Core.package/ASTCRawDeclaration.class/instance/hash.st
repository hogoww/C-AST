comparing
hash
	| hash |
	hash := 0.
	hash := hash + rawDeclaration hash.
	hash := hash + varName hash.
	^ hash