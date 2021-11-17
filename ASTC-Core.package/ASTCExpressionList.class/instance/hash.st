comparing
hash

	| hash |
	hash := super hash.
	hash := hash + expressions hash.
	^ hash