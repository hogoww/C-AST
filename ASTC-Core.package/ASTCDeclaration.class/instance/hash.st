comparing
hash
	| hash |
	hash := super hash.
	hash := hash + qualifiers hash.
	hash := hash + id hash.
	^ hash