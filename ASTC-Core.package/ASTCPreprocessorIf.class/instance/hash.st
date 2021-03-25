comparing
hash
	| hash |
	hash := super hash.
	hash := hash + condition hash.
	hash := hash + then hash.
	hash := hash + else hash.
	^ hash