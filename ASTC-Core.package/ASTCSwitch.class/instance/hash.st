comparing
hash
	| hash |
	hash := super hash.
	hash := hash + expression hash.
	hash := hash + cases hash.
	hash := hash + default hash.
	^ hash