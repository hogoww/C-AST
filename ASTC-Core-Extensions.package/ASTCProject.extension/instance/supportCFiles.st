*ASTC-Core-Extensions
supportCFiles
	| s |
	s := Set new.
	cFiles do: [ :aCFile | s addAll: aCFile supportCFiles ].
	^ s