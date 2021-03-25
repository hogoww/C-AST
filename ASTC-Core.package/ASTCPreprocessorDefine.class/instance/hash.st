comparing
hash
	| hash |
	hash := super hash.
	hash := hash + name hash.
	hash := hash + value hash.
	^ hash