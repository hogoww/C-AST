comparing
hash
	| hash |
	hash := 0.
	hash := hash + iteratorDefinition hash.
	hash := hash + iteratorModification hash.
	^ hash