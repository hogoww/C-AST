*ASTC-Core-Extensions
hash
	| hash |
	hash := super hash.
	"remove recursive call"
	"hash := hash + cFile hash."
	^ hash