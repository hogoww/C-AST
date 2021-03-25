comparing
hash
	| hash |
	hash := super hash.
	hash := hash + fileName hash.
	hash := hash + libraryName hash.
	hash := hash + isStandard hash.
	hash := hash + header hash.
	hash := hash + implementation hash.
	^ hash