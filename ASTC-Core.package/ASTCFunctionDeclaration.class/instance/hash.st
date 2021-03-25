comparing
hash
	| hash |
	hash := 0.
	hash := hash + qualifiers hash.
	hash := hash + type hash.
	hash := hash + parameters hash.
	^ hash