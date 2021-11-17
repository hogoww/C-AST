comparing
hash

	| hash |
	hash := super hash.
	hash := hash + type hash.
	hash := hash + parameters hash.
	^ hash