querying
gatherSupportFilesName
	| s |
	s := Set new.
	cFiles do: [ :aCFile | s addAll: aCFile supportFilesNames ].
	^ s
	