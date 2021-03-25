comparing
hash
	| hash |
	hash := 0.
	hash := hash + condition hash.
	hash := hash + then hash.
	hash := hash + else hash.
	^ hash