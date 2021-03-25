*ASTC-Core-Extensions
gatherSupportFiles
	| s |
	s := Set new.
	cFiles do: [ :aCFile | s addAll: aCFile supportCFiles ].
	^ s