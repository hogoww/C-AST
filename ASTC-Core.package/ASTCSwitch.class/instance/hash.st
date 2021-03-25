comparing
hash
	| hash |
	hash := 0.
	hash := hash + expression hash.
	hash := hash + cases hash.
	hash := hash + default hash.
	^ hash