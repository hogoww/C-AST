comparing
hash

	| hash |
	hash := super hash.
	hash := hash + statements hash.
	hash := hash + declarations hash.
	^ hash