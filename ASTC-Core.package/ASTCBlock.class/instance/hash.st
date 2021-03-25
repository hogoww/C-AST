comparing
hash
	| hash |
	hash := 0.
	hash := hash + statements hash.
	hash := hash + declarations hash.
	^ hash