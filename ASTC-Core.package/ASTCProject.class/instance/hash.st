comparing
hash
	| hash |
	hash := super hash.
	hash := hash + path hash.
	hash := hash + cFiles hash.
	^ hash