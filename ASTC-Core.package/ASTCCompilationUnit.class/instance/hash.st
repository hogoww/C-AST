comparing
hash
	| hash |
	hash := 0.
	hash := hash + includes hash.
	hash := hash + preamble hash.
	hash := hash + defines hash.
	hash := hash + structTypes hash.
	hash := hash + functionDeclarations hash.
	hash := hash + definitions hash.
	hash := hash + variableDeclarations hash.
	^ hash