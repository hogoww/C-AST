comparing
hash

	| hash |
	hash := super hash.
	hash := hash + members hash.
	^ hash