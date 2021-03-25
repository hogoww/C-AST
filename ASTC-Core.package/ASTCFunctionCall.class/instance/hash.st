comparing
hash
	| hash |
	hash := super hash.
	hash := hash + id hash.
	hash := hash + arguments hash.
	^ hash