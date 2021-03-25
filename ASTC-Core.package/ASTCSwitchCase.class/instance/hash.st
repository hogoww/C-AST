comparing
hash
	| hash |
	hash := 0.
	hash := hash + expression hash.
	hash := hash + body hash.
	^ hash