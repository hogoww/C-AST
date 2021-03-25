comparing
hash
	| hash |
	hash := super hash.
	hash := hash + expression hash.
	hash := hash + body hash.
	^ hash