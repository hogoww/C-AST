comparing
hash
	| hash |
	hash := 0.
	hash := hash + path hash.
	hash := hash + cFiles hash.
	^ hash