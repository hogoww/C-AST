comparing
hash
	| hash |
	hash := 0.
	hash := hash + fileName hash.
	hash := hash + libraryName hash.
	hash := hash + isStandard hash.
	hash := hash + header hash.
	hash := hash + implementation hash.
	^ hash