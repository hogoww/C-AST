comparing
hash

	| hash |
	hash := super hash.
	hash := hash + body hash.
	^ hash