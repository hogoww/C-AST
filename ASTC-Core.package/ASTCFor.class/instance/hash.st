comparing
hash

	| hash |
	hash := super hash.
	hash := hash + iteratorDefinition hash.
	hash := hash + iteratorModification hash.
	^ hash